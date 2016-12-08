class AddBakeTimeToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :time_to_bake_in_seconds, :integer
  end
end
