class TrackerController < ApplicationController
    def home
        @track = Track.new
    end
    
    def show
        @track = Track.find(params[:id])
    end
    
    def index
        @track = Track.find(2)
        #@track = Track.find(params[:id])
        #@habit = Habit.find(params[:id])
    end
    
    
    private
    
    def track_params
        params.require(:track).permit(:name, :date, :streak, :habit_done)
    end
    
end
