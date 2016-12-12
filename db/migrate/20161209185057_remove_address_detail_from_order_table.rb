class RemoveAddressDetailFromOrderTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :shipping_street
    remove_column :orders, :shipping_city
    remove_column :orders, :shipping_state
    remove_column :orders, :shipping_zip
    remove_column :orders, :billing_street
    remove_column :orders, :billing_city
    remove_column :orders, :billing_state
    remove_column :orders, :billing_zip
  end
end
