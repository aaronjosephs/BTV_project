class FixUserRoleColumnName < ActiveRecord::Migration
  def up
    rename_column :user_roles, :User_id, :user_id
  end

  def down
    rename_column :user_roles, :user_id, :User_id
  end
end
