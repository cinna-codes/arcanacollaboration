class ReadingsController < ApplicationController
    before_action :set_reading, only: [:show, :edit, :update, :destroy]

    def index
        @readings = Reading.all
    end

    def show
    end

    def new
        @reading = Reading.new
    end

    def create
        if !logged_in
            redirect_to login_path
        end
        @reading = current_user.readings.build(reading_params)
        if @reading.save
            redirect_to reading_path(@reading)
        else
            render :new
        end
    end

    def edit
        if !logged_in
            redirect_to login_path
        elsif @reading.user != current_user
            redirect_to reading_path(@reading)
        end
    end

    def update

    end

    def destroy
        
    end

    private
 
    def reading_params
      params.require(:reading).permit(:spread_id, :desc, cards_readings_attributes: [:num, :card_id, :upright])
    end

    def set_reading
      @reading = Reading.find_by_id(params[:id])
    end
end
