class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.integer :cakewalker_id
      t.string :status

      t.timestamps
    end
  end
end
