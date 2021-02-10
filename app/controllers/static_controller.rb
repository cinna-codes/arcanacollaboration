class StaticController < ApplicationController
    def home
        
    end

    def index
        @users = User.all
    end
end
