class User < ApplicationRecord
  def posts
    return Post.where(user_id: self.id)
  end
end
