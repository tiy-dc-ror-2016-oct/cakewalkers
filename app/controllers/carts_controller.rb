class CartsController < ApplicationController
  def destroy
    current_cart.line_items.delete_all
    redirect_to cart_path
  end

  def show
  end
end
