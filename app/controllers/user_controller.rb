class UserController < ApplicationController
    def new
    end

    def create
        @user = User.new(
            name: params[:name],
            real_name: params[:real_name],
            email: params[:email],
            grade: params[:grade],
            password: params[:password]
            # image: "default.jpg"
        )

        # if params[:image]
        #     @user.image = "#{@user.id}.jpg"
        #     image = params[:image]
        #     File.binwrite("public/user_images/#{@user.image}", image.read)
        # end

        if @user.save
            redirect_to("/")
        else
            render("user/new")
        end
    end
end
