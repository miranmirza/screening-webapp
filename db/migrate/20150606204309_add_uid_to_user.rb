class AddUidToUser < ActiveRecord::Migration
  def change
    add_column :users, :uid, :string
    add_column :users, :provider, :string
    add_column :users, :token, :string
    add_column :users, :profile_image_url, :string
    change_column_default :users, :role, "pending"
    add_column :users, :phone, :string
    add_column :users, :email, :string
  end
end
