class OrdersController < ApplicationController
  BASE_URI = ENV["CAKEWALKER_API"] || "http://localhost:1234/bake_jobs"

  def new
    @order = Order.new
    if current_user
      if !current_user.address
        current_user.address = Address.new
      end
      @order.client = current_user
      if current_user.credit_card
        @order.credit_card = current_user.credit_card
        if !current_user.credit_card.billing_address
          @order.credit_card.billing_address = Address.new
        end
      else
        @order.credit_card = CreditCard.new
        @order.credit_card.billing_address = Address.new
      end
    else #user not logged in
      @order.client = User.new
      @order.client.address = Address.new
      @order.credit_card = CreditCard.new
      @order.credit_card.billing_address = Address.new
    end
  end

  def create
    @order = Order.new(order_params)
    @order.line_items = current_cart.line_items
    if current_user
      if !current_user.address.contact_phone
        current_user.address.destroy
        current_user.address = @order.client.address
        # because there is already an address record created this may be a better solution
        # but it may need verification of update success
        # current_user.address.update(order_params[:client_attributes][:address_attributes])
      end
      @order.client = current_user
    else
      @order.client.password = "password"
      @order.client.password_confirmation = "password"
    end

    # a place holder for verification of credit card info
    verify_credit_card(@order)
    # Do not save credit card info if it is not already saved
    @order.credit_card = nil unless current_user && current_user.credit_card
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
    params.require(:order).
           permit(client_attributes: [:full_name, :email,
                                      address_attributes: [:contact_phone, :street, :city, :state, :zip_code]],
                  credit_card_attributes: [:name_on_card, :kind, :number, :expiration_month, :expiration_year, :security_code,
                                           billing_address_attributes: [:contact_phone, :street, :city, :state, :zip_code]])
  end

  def verify_credit_card(order)
  end
end
