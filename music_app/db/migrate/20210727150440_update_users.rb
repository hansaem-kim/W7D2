class UpdateUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :email, :string, {null: false}
    add_column :users, :passwrod_digest, :string, {null: false}
    add_column :users, :session_token, :string, {null: false}
    add_column :users, :created_at, :datetime, {null: false}
    add_column :users, :updated_at, :datetime, {null: false}
    add_index :users, :email, unique: true
    add_index :users, :session_token, unique: true
  end
end

