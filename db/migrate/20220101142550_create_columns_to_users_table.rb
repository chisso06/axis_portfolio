class CreateColumnsToUsersTable < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :email, :string
    add_column :users, :grade, :string
    add_column :users, :image, :string
    add_column :users, :password, :string
    add_column :users, :real_name, :string
  end
end