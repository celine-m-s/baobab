class AddRolesColumnAndRemoveAdminColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :roles, :integer, default: 0
    remove_column :users, :admin
    remove_column :users, :super_admin
  end
end
