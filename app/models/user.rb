class User < ApplicationRecord
    def show
      @user = User.find_by(id: params[:id])
    end
end
