class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by email: params[:email]

    if @user && @user.authenticate(params[:password])
      session[:current_user_id] = @user.id
      redirect_to products_path, flash[:notice] = "Successfully logged in!"
    else
      redirect_to new_session_path, flash[:alert] = "Email and Password combination do not match."
    end
  end

  def destroy
    session.delete("current_user_id")
    redirect_to root_path
  end
end
