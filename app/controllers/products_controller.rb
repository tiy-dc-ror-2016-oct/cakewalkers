class ProductsController < ApplicationController
  load_and_authorize_resource
  def index
    if current_user.admin? == true
      @products = Product.all
    else
      @products = Product.where(:for_sale => true)
      if !current_cart
        @current_cart = Cart.create
        session[:current_cart_id] = @current_cart.id
      end
    end
  end

  def new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  private
  def product_params
    params.require(:product).permit(:unit_price_in_cents, :for_sale, :name)
  end

end
