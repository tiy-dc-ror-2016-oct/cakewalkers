class RemoveUserInfoFromOrderTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :full_name
    remove_column :orders, :phone
    remove_column :orders, :email
  end
end
