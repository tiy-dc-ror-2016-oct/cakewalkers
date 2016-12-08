class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if !current_user
      @user.roles << Role.find_by(name: "client")
    else
      @user.roles << Role.find(params[:user][:roles])
    end
    session["message"] = "you signed up!"
  
    if @user.save
      session[:current_user_id] = @user.id
      redirect_to products_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      @user.roles.update(Role.find(params[:user][:roles]))
      redirect_to user_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params["id"])
    @user.destroy
    redirect_to root_url, notice: "Account was successfully destroyed."
  end

  private
  def user_params
    params.require(:user).permit(:email, :password_confirmation, :password, :full_name)
  end
end
