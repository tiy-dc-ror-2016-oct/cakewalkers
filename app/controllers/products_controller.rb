class ProductsController < ApplicationController
  def index
    @products = Product.all
    if !current_cart
      @current_cart = Cart.create
      session[:current_cart_id] = @current_cart.id
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
      redirect_to product_path(params[:id])
    else
      render :edit
    end
  end

  private
  def product_params
    params.require(:product).permit(:unit_price_in_cents, :for_sale, :name)
  end

end
