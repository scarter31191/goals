class TravelersController < ApplicationController

    def new
        @traveler = Traveler.new
    end

end
