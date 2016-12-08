class AddCurrentCartIdAndRemoveCurrentOrderIdFromLineItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :line_items, :current_order_id
    add_column :line_items, :current_cart_id, :integer
  end
end
