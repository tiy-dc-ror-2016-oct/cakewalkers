class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :unit_price_in_cents
      t.boolean :for_sale

      t.timestamps
    end
  end
end
