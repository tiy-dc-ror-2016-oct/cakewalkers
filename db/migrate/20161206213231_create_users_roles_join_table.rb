class CreateUsersRolesJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :roles do |t|
      t.integer :user_id
      t.integer :role_id

    end
  end
end
