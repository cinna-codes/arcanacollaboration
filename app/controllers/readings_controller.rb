class ReadingsController < ApplicationController
    def index
        @readings = Reading.all
    end

    def show

    end

    def new
        @reading = Reading.new
    end

    def create

    end

    def edit

    end

    def update

    end

    def destroy
        
    end
end
