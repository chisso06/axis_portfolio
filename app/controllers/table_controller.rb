class TableController < ApplicationController
  def post
    @posts = Post.all
  end

  def user
  end

  def like
  end
end
