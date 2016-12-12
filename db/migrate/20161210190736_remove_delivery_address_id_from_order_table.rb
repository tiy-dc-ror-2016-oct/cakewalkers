class RemoveDeliveryAddressIdFromOrderTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :delivery_address_id
  end
end
