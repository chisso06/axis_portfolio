class Post < ApplicationRecord
  with_options presence: true do
    validates :user_id
    validates :year
    validates :month
    validates :tytle
  end

  def user
    return User.find_by(id: self.user_id)
  end
end
