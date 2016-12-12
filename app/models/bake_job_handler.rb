class BakeJobHandler
  attr_accessor :order

  def initialize(order)
    @order = order
  end

  def order_status
    if @order.status == "Out for delivery" || @order.status == "Delivered"
      @order.status
    else
      status_codes = { "waiting" => 1, "baking" => 2, "done" => 3 }
      status_names = { 1=> "Ready to bake", 2=> "Baking", 3=> "Ready for delivery"}
      response_array = order_statuses
      order_status_codes = response_array.map { |response| status_codes[response["state"]] }
      @order.update(status: status_names[order_status_codes.min])
      @order.status = status_names[order_status_codes.min]
      return @order.status
    end
  end

  def order_statuses
    response = []
    order.line_items.each do |line_item|
      response << line_item_status(line_item)
    end
    response
  end

  def line_item_status(line_item)
    HTTParty.get("#{Cakewalkers::URL}bake_jobs/#{line_item.bake_job_id}")
  end

  def post_bake_job(line_item)
    HTTParty.post("#{Cakewalkers::URL}bake_jobs/#{line_item.product.api_id}",
      body:
      {
        bake_job:
        {
          quantity: line_item.quantity
        }
      }
    )
  end

  def get_all_bake_jobs
    HTTParty.get("#{Cakewalkers::URL}bake_jobs")
  end

  def get_active_jobs_from_factory
    get_all_bake_jobs.select { |job| job["created_at"] < order.created_at && (job["state"] == "baking" || job["state"] == "waiting") }
  end

  def total_active_job_time
    get_active_jobs_from_factory.sum { |job| job["estimated_time_to_completion_in_seconds"] }
  end

  def active_job_time_to_completion
    if order.expected_delivery_time
      order.expected_delivery_time
    else
      order.update(expected_delivery_time: Time.now + (total_active_job_time / 3))
    end
  end

end
