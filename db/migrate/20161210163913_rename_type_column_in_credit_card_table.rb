class RenameTypeColumnInCreditCardTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :credit_cards, :type, :kind
  end
end
