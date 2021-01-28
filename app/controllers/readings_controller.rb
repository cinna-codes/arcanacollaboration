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

    private
 
    def reading_params
      params.require(:reading).permit(:desc, card_ids:[], card_readings_attributes: [:num, :card_id, :upright])
    end
end
