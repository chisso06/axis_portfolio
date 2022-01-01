class PostActionToDo < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :action, :do
  end
end
