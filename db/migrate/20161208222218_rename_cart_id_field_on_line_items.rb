class RenameCartIdFieldOnLineItems < ActiveRecord::Migration[5.0]
  def change
    rename_column :line_items, :current_cart_id, :cart_id
  end
end
