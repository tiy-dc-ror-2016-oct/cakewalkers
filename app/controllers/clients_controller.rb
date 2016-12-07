class ClientsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    session["message"] = "you signed up!"

    if @user.save
      session[:current_user_id] = @user.id
      redirect_to products_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params["id"])
    render :show
  end

  def destroy
    @user = User.find(params["id"])
    @user.destroy
    redirect_to root_url, notice: "Account was successfully destroyed."
  end

  def user_params
    params.require(:user).permit(:email, :password_confirmation, :password, :full_name)
  end
end
