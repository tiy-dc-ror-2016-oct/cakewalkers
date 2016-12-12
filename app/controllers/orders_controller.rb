class OrdersController < ApplicationController
  BASE_URI = ENV["CAKEWALKER_API"] || "http://localhost:1234/bake_jobs"

  def new
    @order = Order.new(client: current_user)

    @order.full_name = current_user.try(:full_name)
    @order.email = current_user.try(:email)
    @order.delivery_address = current_user.try(:address) || Address.new
    @order.credit_card = current_user.try(:credit_card) || CreditCard.new
    @order.billing_address = @order.credit_card.try(:address) || Address.new
  end

  def create
    @order = Order.new(
      client: current_user,
      credit_card_id: order_params[:credit_card_attributes][:id],
      delivery_address_id: order_params[:delivery_address_attributes][:id],
      billing_address_id: order_params[:billing_address_attributes][:id]
    )
    @order.assign_attributes(order_params)
    @order.line_items = current_cart.line_items

    if @order.save
      # binding.pry
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
    params.require(:order).
           permit(:full_name, :email,
                  delivery_address_attributes: [:id, :contact_phone, :street, :city, :state, :zip_code],
                  credit_card_attributes: [:id, :name_on_card, :kind, :number, :expiration_month, :expiration_year, :security_code],
                  billing_address_attributes: [:id, :contact_phone, :street, :city, :state, :zip_code])
  end

  def verify_credit_card(order)
  end
end
