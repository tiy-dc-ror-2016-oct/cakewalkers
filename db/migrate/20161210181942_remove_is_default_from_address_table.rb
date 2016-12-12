class RemoveIsDefaultFromAddressTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :addresses, :is_default
  end
end
