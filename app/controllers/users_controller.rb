class UsersController < ApplicationController

    def new
    end

    def create
    end

    def show
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    
end
