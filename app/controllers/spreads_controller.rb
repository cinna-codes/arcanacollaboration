class SpreadsController < ApplicationController
    def index
        @spreads = Spread.alphabetize
    end

    def show
        @spread = Spread.find_by(id: params[:id])
    end
end
