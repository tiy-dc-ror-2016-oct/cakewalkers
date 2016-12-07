class AddAddressFieldsToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :shipping_street, :string
    add_column :orders, :shipping_city, :string
    add_column :orders, :shipping_state, :string
    add_column :orders, :shipping_zip, :string
    add_column :orders, :billing_street, :string
    add_column :orders, :billing_city, :string
    add_column :orders, :billing_state, :string
    add_column :orders, :billing_zip, :string
    add_column :orders, :full_name, :string
    add_column :orders, :phone, :string
    add_column :orders, :email, :string
  end
end
