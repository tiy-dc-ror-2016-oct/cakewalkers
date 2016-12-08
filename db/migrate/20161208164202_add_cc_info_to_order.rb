class AddCcInfoToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :credit_card_number, :string
    add_column :orders, :cc_expiration, :date
    add_column :orders, :cc_code, :string
  end
end
