class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :real_name
      t.string :email
      t.integer :grade
      t.string :password
      t.string :image
      t.string :comment
      t.timestamps
    end
  end
end
