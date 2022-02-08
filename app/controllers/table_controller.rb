class TableController < ApplicationController
  def post
    @posts = Post.all
  end

  def user
    @users = User.all
  end

  def like; end
end
