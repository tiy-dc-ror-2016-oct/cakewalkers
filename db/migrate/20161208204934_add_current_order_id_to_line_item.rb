class AddCurrentOrderIdToLineItem < ActiveRecord::Migration[5.0]
  def change
    add_column :line_items, :current_order_id, :integer
  end
end
