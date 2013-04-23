class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.references :User
      t.string :role

      t.timestamps
    end
    add_index :user_roles, :User_id
  end
end
