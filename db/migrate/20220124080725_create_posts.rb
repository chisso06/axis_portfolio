class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :year
      t.integer :month
      t.string :tytle
      t.text :background
      t.text :do
      t.text :notice
      t.timestamps
    end
  end
end
