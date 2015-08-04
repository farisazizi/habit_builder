class TrackerController < ApplicationController

    def index
        # @track = Track.find(2)
        @track = Track.all
    end
    
    def new
        @track = Track.new
    end
    
    def show
        @track = Track.find(params[:id])
    end
    
    def edit
    end
    
    def create
        @track = Track.new(track_params)
    end
    
    private
    
    def track_params
        params.require(:track).permit( :name, :date, :streak, :habit_done)
    end
    
end
