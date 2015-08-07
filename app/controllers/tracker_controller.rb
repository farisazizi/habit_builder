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
    
    def update
    end

    def increase_streak
        track = Track.find(params[:track_id])
        track.increment(:streak, 1) unless track.streak > 20
            
        if track.save
            notification = 'Successfully Updated'
        else
           notification = 'Failed to update' 
        end
        redirect_to track_path(track), notice: notification
        
    end
    
    
    private
    
    def track_params
        params.require(:track).permit( :name, :streak, :habit_done)
    end
    
end
