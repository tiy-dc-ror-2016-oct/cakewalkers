class RemoveBillingAddressIdFromOrderTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :billing_address_id
  end
end
