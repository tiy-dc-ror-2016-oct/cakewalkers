class LineItemsController < ApplicationController
  def create
    @cart = Cart.new
    @products = Product.all
    @line_item = LineItem.new(line_item_params)

    if @line_item.save
      @cart.line_items << @line_item
    end

    redirect_to products_path
  end

  private
  def line_item_params
    params.require(:line_item).permit(:product_id, :quantity, :total_sale_price_in_cents, :estimated_bake_time_in_seconds)
  end
end
