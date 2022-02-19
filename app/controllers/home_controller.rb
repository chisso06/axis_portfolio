class HomeController < ApplicationController
  before_action :login_user, only: :top

  def top
  end
  
  def help
  end

  def login_user
    if @current_user
      redirect_to('/users/index')
    end
  end
end
