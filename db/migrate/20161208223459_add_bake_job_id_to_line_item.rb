class AddBakeJobIdToLineItem < ActiveRecord::Migration[5.0]
  def change
    add_column :line_items, :bake_job_id, :integer
  end
end
