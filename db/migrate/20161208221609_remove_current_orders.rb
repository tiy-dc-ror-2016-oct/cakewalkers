class RemoveCurrentOrders < ActiveRecord::Migration[5.0]
  def change
    drop_table :current_orders
  end
end
