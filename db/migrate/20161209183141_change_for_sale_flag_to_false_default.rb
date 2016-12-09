class ChangeForSaleFlagToFalseDefault < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :for_sale, :boolean, :default => false
  end
end
