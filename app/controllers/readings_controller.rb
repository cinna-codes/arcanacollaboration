class ReadingsController < ApplicationController
    before_action :set_reading, only: [:show, :edit, :update, :destroy]
    before_action :is_logged_in, only: [:new, :create]
    before_action :validates_is_current_user, only: [:edit, :update, :destroy]

    def index
        @readings = Reading.all
    end

    def show
    end

    def new
        @reading = Reading.new
    end

    def create
        @reading = current_user.readings.build(reading_params)
        if @reading.save
            redirect_to reading_path(@reading)
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @reading.valid?
            @reading.cards_readings.each do |cr|
                cr.destroy
            end
        
            @reading.update(reading_params)
    
            if @reading.save
                redirect_to reading_path(@reading)
            else
                render :edit
            end
        end
    end

    def destroy
        @reading.cards_readings.each do |cr|
            cr.destroy
        end
        @reading.destroy
        # flash[:notice] = "Reading deleted."
        redirect_to readings_path
    end

    private
 
    def reading_params
      params.require(:reading).permit(:spread_id, :desc, cards_readings_attributes: [:card_id, :upright])
    end

    def set_reading
      @reading = Reading.find_by_id(params[:id])
    end

    def is_logged_in
        if !logged_in
            redirect_to login_path
        end
    end

    def validates_is_current_user
        if @reading.id != current_user.id
            redirect_to reading_path(@reading)
        end
    end
end
