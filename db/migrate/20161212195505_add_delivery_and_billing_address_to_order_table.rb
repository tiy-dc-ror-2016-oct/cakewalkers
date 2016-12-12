class AddDeliveryAndBillingAddressToOrderTable < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :delivery_address_id, :integer
    add_column :orders, :billing_address_id, :integer
    add_column :orders, :full_name, :string
    add_column :orders, :email, :string
  end
end
