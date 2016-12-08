class ChangeFieldTypeApiIdProduct < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :api_id, :string
  end
end
