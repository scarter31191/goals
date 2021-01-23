class GoalsController < ApplicationController

    def index
        @goals = Goal.all
    end

    def new
        @goal = Goal.new
    end

    def show
        # @goal = Goal.find(params[:id])
    end

    def edit

    end
end
