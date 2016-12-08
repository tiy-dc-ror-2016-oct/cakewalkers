class ApplicationController < ActionController::Base
  include CanCan::ControllerAdditions
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :current_order

  def current_user
    User.find_by(id: session["current_user_id"])
  end

  rescue_from CanCan::AccessDenied do |error|
    redirect_to products_path, :alert => error.message
  end

  def current_order
    CurrentOrder.find_by(id: session["current_order_id"])
  end
end
