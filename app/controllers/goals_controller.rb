class GoalsController < ApplicationController

    def index
        @goals = Goal.all
    end

    def new
        @goal = Goal.new
    end

    def create
        @goal = Goal.new(params.require(:goal).permit(:name, :goal_date))
        @goal.save
        redirect_to goal_path(@goal)
    end

    def show
        @goal = Goal.find(params[:id])
    end

    def edit

    end
end
