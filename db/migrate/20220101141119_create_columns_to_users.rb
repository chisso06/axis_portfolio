class CreateColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :columns_to_users do |t|

      t.timestamps
    end
  end
end
