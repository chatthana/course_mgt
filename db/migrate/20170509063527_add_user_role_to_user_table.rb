class AddUserRoleToUserTable < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :admin, :integer, limit:1 
  end
end
