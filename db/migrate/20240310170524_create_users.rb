class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users , primary_key: "user_id" do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
    
  end
end
