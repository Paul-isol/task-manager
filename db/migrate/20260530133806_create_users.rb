class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users do |t|
      add_column :users, :email_address, :string, null: false
      add_column :users, :password_digest, :string, null: false
      remove_column :users, :email
      remove_column :users, :password
      

      t.timestamps
    end
    add_index :users, :email_address, unique: true
  end
end
