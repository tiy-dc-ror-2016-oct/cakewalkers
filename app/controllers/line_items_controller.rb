class LineItemsController < ApplicationController
  BASE_URI = ENV["CAKEWALKER_API"]||"http://localhost:1234/bake_jobs"

  def create
    @products = Product.all
    @line_item = LineItem.new(line_item_params)

    if @line_item.save
      current_cart.line_items << @line_item
    end

    redirect_to products_path
  end

  def status
    @line_item = LineItem.find(params[:id])
    HTTParty.get("#{BASE_URI}/bake_jobs/#{params[:id]}").to_json
  end

  private
  def line_item_params
    params.require(:line_item).permit(:product_id, :quantity, :total_sale_price_in_cents, :estimated_bake_time_in_seconds)
  end
end
