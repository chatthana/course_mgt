class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :firstname
      t.string :lastname
      t.string :nickname
      t.datetime :birthdate

      t.timestamps
    end
  end
end
