class BakeJobHandler
  BASE_URI = ENV["CAKEWALKER_API"]||"http://localhost:1234/bake_jobs"
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
      # status_names[order_status_codes.min]
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
    HTTParty.get("#{BASE_URI}/#{line_item.bake_job_id}")
  end

  def post_bake_job(line_item)
    HTTParty.post("#{BASE_URI}/#{line_item.product.api_id}",
      body:
      {
        bake_job:
        {
          quantity: line_item.quantity
        }
      }
    )
  end

end
