class ProductsController < ApplicationController
  def index
    if current_user && current_user.admin?
      @products = Product.all
    else
      @products = Product.where(for_sale: true)
    end
    if !current_cart
      @current_cart = Cart.create
      session[:current_cart_id] = @current_cart.id
    end
  end

  def new
  end
end
