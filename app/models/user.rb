class User < ApplicationRecord
    with_options presence: true do
        validates :name
        validates :real_name
        validates :email
        validates :grade
        validates :password
    end

    validates :email, {uniqueness: true}
end