class OrdersController < ApplicationController
  def new
    @order = Order.new()
    @default_address = nil
    if current_user
      @default_address = Address.find_by(user_id: current_user.id, is_default: true)
    end
    if @default_address
      @order.delivery_address = @default_address
      @order.billing_address = @default_address
    else
      @order.delivery_address = Address(new)
      @order.billing_address = Address(new)
    end
    binding.pry
  end

  def create
    @order = Order.new(order_params)
    @order.line_items = current_order.line_items
    if @order.save

      @order.line_items.each do |line_item|
        response = post_bake_job(line_item.product.api_id, line_item.quantity)
        line_item.bake_job_id = response.parsed_response["id"].to_i
      end
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

  def destroy
    Order.find(params[:id]).destroy
    redirect_to root_path
  end

  private
  def order_params
    binding.pry
    params.require(:order).permit(:shipping_city, :shipping_street, :shipping_state, :shipping_zip, :billing_street, :billing_state, :billing_zip, :billing_city, :full_name, :phone, :email, :credit_card_number, :cc_expiration, :cc_code)
  end

  def post_bake_job(code, quantity)
    HTTParty.post("https://cakewalkers-api.herokuapp.com/bake_jobs/#{code}",
      body:
      {
        bake_job:
        {
          quantity: quantity
        }
      }
    )
  end
end
