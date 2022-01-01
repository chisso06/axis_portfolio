class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit
    @user = User.find_by(id: params[:id])
  end
end
