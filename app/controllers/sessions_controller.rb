class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(email: params[:user][:email])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            # flash[:message] = "Welcome back #{user.username}!"
            redirect_to user_path(user)
        else
            # flash[:message] = "An error occurred. Please try to login again."
            redirect_to "/login"
        end
    end

    def github
        # byebug
        auth = request.env["omniauth.auth"]   
  
        user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)     

        if user && user.save
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            # flash[:message] = "An error occurred. Please try to login again."
            redirect_to login_path
        end
    end

    def destroy
        session.clear
        redirect_to root_url
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    
end
