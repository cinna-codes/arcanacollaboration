class SpreadsController < ApplicationController
    def index
        @spreads = Spread.all
    end

    def show
        @spread = Spread.find_by(id: params[:id])
    end
end
