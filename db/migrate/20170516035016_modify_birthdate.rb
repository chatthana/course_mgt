class ModifyBirthdate < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :birthdate, :date
  end
end
