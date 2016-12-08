class ProductsController < ApplicationController
  def index
    @products = Product.all
    if !current_order
      @current_order = CurrentOrder.create
      session[:current_order_id] = @current_order.id
    end
  end

  def new
  end
end
