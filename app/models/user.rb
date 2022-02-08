class User < ApplicationRecord
<<<<<<< HEAD
  with_options presence: true do
      validates :name
      validates :real_name
      validates :email
      validates :grade
      validates :password
  end
  
  def posts
    return Post.where(user_id: self.id)
  end
=======
>>>>>>> users_index
end
