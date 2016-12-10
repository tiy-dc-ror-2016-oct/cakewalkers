class CreateCreditCards < ActiveRecord::Migration[5.0]
  def change
    create_table :credit_cards do |t|
      t.integer :user_id
      t.integer :billing_address_id
      t.string :name_on_card
      t.string :type
      t.string :number
      t.string :expiration_month
      t.string :expiration_year
      t.string :security_code
      t.boolean :is_default

      t.timestamps
    end
  end
end
