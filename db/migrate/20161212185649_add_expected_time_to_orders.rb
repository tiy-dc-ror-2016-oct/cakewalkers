class AddExpectedTimeToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :expected_delivery_time, :datetime
  end
end
