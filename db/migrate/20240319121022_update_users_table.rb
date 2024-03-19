class UpdateUsersTable < ActiveRecord::Migration[7.1]
  def change
    change_column_default :users, :email, from: nil, to: ""
    change_column_default :users, :username, from: nil, to: ""
    add_index :users, :username, unique: true
  end
end