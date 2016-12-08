class AddApiIdColumnToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :api_id, :integer
  end
end
