class RemoveLineItemIdFromCurrentOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :current_orders, :line_item_id
  end
end
