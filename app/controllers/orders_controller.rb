class OrdersController < ApplicationController
  load_and_authorize_resource
  BASE_URI = ENV["CAKEWALKER_API"]||"http://localhost:1234/bake_jobs"

  def new
    @order = Order.new
  end

  def index
    if current_user.cakewalker?
      @orders = Order.where(status: ["Ready for delivery", "Out for delivery"])
    else
      @orders = Order.all
    end
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
      @order.update(status: response.parsed_response["state"])
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
      if current_user.cakewalker?
        redirect_to orders_path
      else
        redirect_to client_order_path(params[:id])
      end
    else
      render :edit
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def status # 600 seconds for delivery time
    @order = Order.find(params[:id])
    render json: { status: BakeJobHandler.new(@order).order_status, time_to_go: BakeJobHandler.new(@order).active_job_time_to_completion + 600 }
  end

  def new_featured
    @order = Order.new
    @current_cart = Cart.create
    @current_cart.line_items << LineItem.create(product: Product.featured, quantity: 1, total_sale_price_in_cents: Product.featured.unit_price_in_cents)
    session[:current_cart_id] = @current_cart.id
    render :new
  end

  private
  def order_params
    params.require(:order).permit(:shipping_city, :shipping_street, :shipping_state, :shipping_zip, :billing_street, :billing_state, :billing_zip, :billing_city, :full_name, :phone, :email, :credit_card_number, :cc_expiration, :cc_code, :status, :cakewalker_id)
  end



end
