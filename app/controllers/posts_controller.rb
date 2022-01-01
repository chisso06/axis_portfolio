class PostsController < ApplicationController
  def new
  end

  def create
    @post = Post.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      tytle: params[:tytle],
      background: params[:background],
      do: params[:do],
      notice: params[:notice],
      user_id: params[:user_id]
      )

    if @post.save
      redirect_to("/")
    else
      render("posts/new")
    end
    
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    post = Post.find_by(id: params[:id])
    post.start_date = params[:start_date]
    post.end_date = params[:end_date]
    post.tytle = params[:tytle]
    post.background = params[:background]
    post.do = params[:do]
    post.notice = params[:notice]

    if post.save
      redirect_to("/")
    else
      render("posts/#{post.id}/edit")
    end

  end

  def destroy
    post = Post.find_by(id: params[:id])
    post.destroy
    redirect_to("/")
  end

end
