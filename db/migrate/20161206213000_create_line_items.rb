class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :quantity
      t.integer :total_sale_price_in_cents
      t.integer :estimated_bake_time_in_seconds

      t.timestamps
    end
  end
end
