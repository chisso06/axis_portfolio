class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(
      year: params[:year],
      month: params[:month],
      tytle: params[:tytle],
      background: params[:background],
      do: params[:do],
      notice: params[:notice],
      user_id: session[:user_id]
    )

    if @post.save
      flash[:notice] = "投稿が保存されました"
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
    post.year = params[:year]
    post.month = params[:month]
    post.tytle = params[:tytle]
    post.background = params[:background]
    post.do = params[:do]
    post.notice = params[:notice]

    if post.save
      flash[:notice] = "編集が保存されました"
      redirect_to("/")
    else
      render("posts/#{post.id}/edit")
    end
  end

  def destroy
    post = Post.find_by(id: params[:id])
    post.destroy
    flash[:notice] = "投稿が削除されました"
    redirect_to("/")
  end
end