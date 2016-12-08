class ProductsController < ApplicationController
  def index
    @products = Product.all
    if !current_cart
      @current_cart = Cart.create
      session[:current_cart_id] = @current_cart.id
    end
  end

  def new
  end
end
