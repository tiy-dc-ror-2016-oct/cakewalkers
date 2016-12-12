class LineItemsController < ApplicationController

  def create
    @products = Product.all
    @line_item = LineItem.new(line_item_params)

    if @line_item.save
      current_cart.line_items << @line_item
    end

    redirect_to products_path
  end

  def destroy
    LineItem.find(params[:id]).destroy
    redirect_to products_path
  end

  private
  def line_item_params
    params.require(:line_item).permit(:product_id, :quantity, :total_sale_price_in_cents, :estimated_bake_time_in_seconds)
  end
end
