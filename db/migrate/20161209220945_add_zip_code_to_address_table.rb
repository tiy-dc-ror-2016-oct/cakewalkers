class AddZipCodeToAddressTable < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :zip_code, :string
  end
end
