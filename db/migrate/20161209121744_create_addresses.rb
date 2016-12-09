class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :contact_phone
      t.string :street
      t.string :apartment
      t.string :city
      t.string :state
      t.boolean :is_default

      t.timestamps
    end
  end
end
