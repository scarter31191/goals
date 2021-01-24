class DestinationsController < ApplicationController

    def index
        @destinations = Destination.all
    end

    def new
        @destination = Destination.new
    end

    def create
        @destination = Destination.new(destination_params(:location, :description))
        @destination.save
        redirect_to destination_path(@destination)
    end

    def show
        @destination = Destination.find(params[:id])
    end

    def edit

    end

    def destroy
        @destination = Destination.find(params[:id]).destroy
        redirect_to destinations_url
    end


    private

    def destination_params(*args)
        params.require(:destination).permit(*args)
    end
end
