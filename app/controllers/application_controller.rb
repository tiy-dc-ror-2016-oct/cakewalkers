class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :current_cart

  def current_user
    User.find_by(id: session["current_user_id"])
  end

  def current_cart
    Cart.find_by(id: session["current_cart_id"])
  end

end
