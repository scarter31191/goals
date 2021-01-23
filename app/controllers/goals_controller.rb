class GoalsController < ApplicationController

    def index
        @goals = Goal.all
    end

    def new
        @goal = Goal.new
    end

    def create
        @goal = Goal.new(goal_params(:name, :goal_date))
        @goal.save
        redirect_to goals_path(@goal)
    end

    def show
        @goal = Goal.find(params[:id])
    end

    def edit
        @goal = Goal.find(params[:id])
    end

    def update
        @goal = Goal.find(params[:id])
        @goal.update(goal_params(:name, :goal_date))
        redirect_to goal_path(@goal)
    end

    def destroy
        @goal = Goal.find(params[:id]).destroy
        redirect_to goals_url
    end


    private

    def goal_params(*args)
        params.require(:goal).permit(*args)
    end
end
