class User < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :real_name
    validates :grade
    validates :email
    validates :password
  end

  validates :grade, numericality: { in: 0..10 }, format: { with: /\A[0-9]+\z/ }

  def posts
    return Post.where(user_id: self.id)
  end
end
