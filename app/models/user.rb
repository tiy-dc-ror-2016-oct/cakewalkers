class User < ApplicationRecord
  has_secure_password

  has_and_belongs_to_many :roles
  has_many :orders, foreign_key: :client_id
  has_many :orders, foreign_key: :cakewalker_id
  validates :email, uniqueness: true

  def new
    @client = User.new
  end

  def create
    @client = User.new(client_params)

    if @client.save
      session[:current_client_id] = @client.id
      redirect_to productss_path
    else
      render :new
    end
  end

  private

  def client_params
    params.require(:client).permit(:email, :password_confirmation, :password)
  end
end
