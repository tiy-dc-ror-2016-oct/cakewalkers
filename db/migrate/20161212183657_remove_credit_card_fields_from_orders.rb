class RemoveCreditCardFieldsFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :credit_card_number
    remove_column :orders, :cc_expiration
    remove_column :orders, :cc_code
  end
end
