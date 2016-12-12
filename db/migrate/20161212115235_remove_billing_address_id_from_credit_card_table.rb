class RemoveBillingAddressIdFromCreditCardTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :credit_cards, :billing_address_id
  end
end
