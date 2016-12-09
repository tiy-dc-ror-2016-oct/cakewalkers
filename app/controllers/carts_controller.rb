class CartsController < ApplicationController
  def destroy
    current_cart.line_items.delete_all
    redirect_to products_path
  end
end
