class AddUserDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :mobile, :integer
    add_column :users, :ngo_member, :boolean , default: false
  end
end
