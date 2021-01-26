class UsersController < ApplicationController

    def new
    end

    def create
        # user clicks "I want to authenticate" button
        # github/auth => github knows someone is trying to authenticate 
        # 
    end

    def show
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    
end
