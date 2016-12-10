class OrdersController < ApplicationController
  BASE_URI = ENV["CAKEWALKER_API"]||"http://localhost:1234/bake_jobs"

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.line_items = current_cart.line_items
    if @order.save
      bake_job = BakeJobHandler.new(@order)
      current_cart.line_items.delete_all
      @order.line_items.each do |line_item|
        response = bake_job.post_bake_job(line_item)
        line_item.update(bake_job_id: response.parsed_response["id"].to_i)
      end
      @order.update(status: "waiting")
      redirect_to client_order_path(@order.id)
    else
      render :new
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to client_order_path(params[:id])
    else
      render :edit
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def status
    @order = Order.find(params[:id])
    render json: { status: BakeJobHandler.new(@order).order_status }
  end

  private
  def order_params
    params.require(:order).permit(:shipping_city, :shipping_street, :shipping_state, :shipping_zip, :billing_street, :billing_state, :billing_zip, :billing_city, :full_name, :phone, :email, :credit_card_number, :cc_expiration, :cc_code)
  end



end
