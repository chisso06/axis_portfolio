class AddAimToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :aim, :text
  end
end
