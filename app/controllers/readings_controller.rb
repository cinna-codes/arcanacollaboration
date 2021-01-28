class ReadingsController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]

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

    private
 
    def reading_params
      params.require(:reading).permit(:desc, cards_readings_attributes: [:num, :card_id, :upright])
    end

    def set_reading
      @reading = Reading.find(params[:id])
    end
end
