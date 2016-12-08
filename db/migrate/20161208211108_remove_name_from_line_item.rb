class RemoveNameFromLineItem < ActiveRecord::Migration[5.0]
  def change
    remove_column :line_items, :name
  end
end
