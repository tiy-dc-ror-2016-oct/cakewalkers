class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :current_order

  def current_user
    User.find_by(id: session["current_user_id"])
  end

  def current_order
    CurrentOrder.find_by(id: session["current_order_id"])
  end

end
