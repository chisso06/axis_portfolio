class PostsController < ApplicationController
  def new
  end

  def create
    redirect_to("/")
  end
end
