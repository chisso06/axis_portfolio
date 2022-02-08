class UserController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(
            name: params[:name],
            real_name: params[:real_name],
            email: params[:email],
            grade: params[:grade],
            password: params[:password],
            # image: "default.jpg"
        )

        # if params[:image]
        #     @user.image = "#{@user.id}.jpg"
        #     image = params[:image]
        #     File.binwrite("public/user_images/#{@user.image}", image.read)
        # end

        if @user.save
            session[:user_id] = @user.id
            flash[:notice] = "新規登録に成功しました"
            redirect_to("/")
        else
            render("user/new")
        end
    end

    def login_form
        @email = ""
    end

    def login
        @user = User.find_by(
            email: params[:email],
            password: params[:password]
        )

        if @user
            session[:user_id] = @user.id
            flash[:notice] = "ログインに成功しました"
            redirect_to("/")
        else
            @email = params[:email]
            render("user/login_form")
        end
    end

    def logout
        session[:user_id] = nil
        flash[:notice] = "ログアウトしました"
        redirect_to("/")
    end

    def setting
        @user = User.find_by(id: session[:user_id])
    end

    def setting_update
        @user = User.find_by(id: session[:user_id])
        @user.comment = params[:comment]
        @user.name = params[:name]
        @user.email = params[:email]
        @user.password = params[:password]
        
        if @user.save
            flash[:notice] = "設定を更新しました"
            redirect_to("/users/setting")
        else
            render("user/setting")
        end
    end
end
