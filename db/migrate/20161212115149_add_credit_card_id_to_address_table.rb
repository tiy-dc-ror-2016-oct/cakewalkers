class AddCreditCardIdToAddressTable < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :credit_card_id, :integer
  end
end
