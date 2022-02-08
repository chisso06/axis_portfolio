class Post < ApplicationRecord
  with_options presence: true do
    validates :user_id
    validates :year
    validates :month
    validates :tytle
  end
end
