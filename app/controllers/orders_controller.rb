class OrdersController < ApplicationController
  load_and_authorize_resource

  def new
    setup_order_defaults
  end

  def index
    if current_user.cakewalker?
      @orders = Order.where(status: ["Ready for delivery", "Out for delivery"])
    else
      @orders = Order.all
    end
  end

  def create
    @order = Order.new(
      client: current_user,
      delivery_address_id: order_params[:delivery_address_attributes][:id],
      billing_address_id: order_params[:billing_address_attributes][:id]
    )
    @order.assign_attributes(order_params)
    @order.line_items = current_cart.line_items

    if @order.save

      @amount = current_cart.total
      customer = Stripe::Customer.create(
        :email => params[:email],
        :source  => params[:stripeToken]
      )

      Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => 'Rails Stripe customer',
        :currency    => 'usd'
      )

      bake_job = BakeJobHandler.new(@order)
      current_cart.line_items.delete_all
      @order.line_items.each do |line_item|
        response = bake_job.post_bake_job(line_item)
        line_item.update(bake_job_id: response.parsed_response["id"].to_i)
      end
      OrderMailer.confirm_order(@order).deliver_now
      redirect_to client_order_path(@order.id)
    else
      render :new
    end

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_order_path

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
    setup_order_defaults
    @current_cart = Cart.create
    @current_cart.line_items << LineItem.create(product: Product.featured, quantity: 1, total_sale_price_in_cents: Product.featured.unit_price_in_cents)
    session[:current_cart_id] = @current_cart.id
    render :new
  end

  private

  def order_params
    params.require(:order).
     permit(:full_name, :email, :status, :cakewalker_id,
            delivery_address_attributes: [:id, :contact_phone, :street, :city, :state, :zip_code],
            billing_address_attributes: [:id, :contact_phone, :street, :city, :state, :zip_code])
  end

  def setup_order_defaults
    @order = Order.new(client: current_user)

    @order.full_name = current_user.try(:full_name)
    @order.email = current_user.try(:email)
    @order.delivery_address = current_user.try(:address) || Address.new
    @order.billing_address = current_user.try(:address) || Address.new
  end
end
