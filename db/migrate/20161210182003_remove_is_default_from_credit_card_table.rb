class RemoveIsDefaultFromCreditCardTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :credit_cards, :is_default
  end
end
