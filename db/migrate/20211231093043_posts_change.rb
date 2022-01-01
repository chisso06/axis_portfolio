class PostsChange < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :content, :text
    add_column :posts, :start_date, :date
    add_column :posts, :end_date, :date
    add_column :posts, :tytle, :string
    add_column :posts, :background, :text
    add_column :posts, :action, :text
    add_column :posts, :notice, :text
  end
end
