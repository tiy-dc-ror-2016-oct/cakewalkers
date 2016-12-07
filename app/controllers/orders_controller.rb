class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to order_path(@order.id)
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
      redirect_to order_path(params[:id])
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
    params.require(:order).permit(:shipping_city, :shipping_street, :shipping_state, :shipping_zip, :billing_street, :billing_state, :billing_zip, :billing_city, :full_name, :phone, :email)
  end
end
