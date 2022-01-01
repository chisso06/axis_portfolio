class Post < ApplicationRecord
    with_options presence: true do
        # validates :start_date
        # validates :end_date
        # validates :tytle
        # validates :user_id
        # validates :action
    end
end
