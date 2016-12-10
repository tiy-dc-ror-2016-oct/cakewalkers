class OrdersController < ApplicationController
  BASE_URI = ENV["CAKEWALKER_API"] || "http://localhost:1234/bake_jobs"

  def new
    @order = Order.new
    @default_address = nil
    if current_user
      default_address = Address.find_by(user_id: current_user.id, is_default: true)
      user_credit_card = CreditCard.find_by(user_id: current_user.id, is_default: true)
    end
    if default_address
      @order.delivery_address = default_address
      @order.billing_address = default_address
    else
      @order.delivery_address = Address.new
      @order.billing_address = Address.new
    end
    if user_credit_card
      @order.credit_card = user_credit_card
    else
      @order.credit_card = CreditCard.new
    end
  end

  def create
    @order = Order.new(order_params)
    @order.line_items = current_cart.line_items
    # order_delivery_address = Address.new(order_params[:delivery_address_attributes])
    # render :new unless order_delivery_address.save
    # @order.delivery_address = order_delivery_address
    # order_billing_address = Address.new(order_params[:billing_address_attributes])
    # render :new unless order_billing_address.save
    # @order.billing_address = order_billing_address

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

  def destroy
    Order.find(params[:id]).destroy
    redirect_to root_path
  end

  def status
    @order = Order.find(params[:id])
    render json: { status: BakeJobHandler.new(@order).order_status }
  end

  private

  def order_params
    params.require(:order).permit(:full_name, :email, :phone,
                                  delivery_address_attributes: [:street, :city, :state, :zip_code],
                                  billing_address_attributes: [:street, :city, :state, :zip_code],
                                  credit_card_attributes: [:name_on_card, :kind, :number, :expiration_month, :expiration_year, :security_code])
  end
end
