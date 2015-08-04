class TrackerController < ApplicationController

    def index
       @tracks = Track.all
    end
    
    def new
        @track = Track.new
    end
    
    def show
        @track = Track.find(params[:id])
    end
    
    def progress
        @track = Track.find(params[:id])
    end
        
    def edit
    end
    
    def create
        @track = Track.new(track_params)
    end
    
    def hello
        
    end
    
    private
    
    def track_params
        params.require(:track).permit( :name, :streak, :habit_done)
    end
    
end
