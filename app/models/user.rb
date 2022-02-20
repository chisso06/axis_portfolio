class User < ApplicationRecord

  has_secure_password

  validates :name, presence: true
  validates :real_name, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    length: { minimum: 6 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :grade, numericality: { in: 0..10 }, format: { with: /\A[0-9]+\z/ }

  validates :password, presence: true

  def posts
    return Post.where(user_id: self.id)
  end
end
