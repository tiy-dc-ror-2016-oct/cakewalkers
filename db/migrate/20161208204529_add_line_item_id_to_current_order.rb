class AddLineItemIdToCurrentOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :current_orders, :line_item_id, :integer
  end
end
