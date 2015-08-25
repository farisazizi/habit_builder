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
        # to get a new starting date
        track.newstart = Time.now unless track.streak != 0
        if track.checker< 1
            track.increment(:streak, 1) unless track.streak > 20 
            #to keep track of longest streak
            track.compday = track.streak unless track.streak <= track.compday
            track.checker += 1
            if track.save
                notification = 'Successfully Updated'
                
            else
                notification = 'Failed to update' 
            end
            
        end
        redirect_to track_path(track), notice: notification
        
    end
    
    def reset_streak
        track = Track.find(params[:track_id])
        # to get last date of the streak
        track.longdate = Time.now
        if track.checker< 1    
            track.streak = 0
            track.increment(:skipdays, 1) 
            track.checker += 1
            if track.save
                notification = 'Successfully Updated'
            else
                notification = 'Failed to update' 
            end
        end
        redirect_to track_path(track), notice: notification
    end
    
    def reset_counter
       track =  Track.find(params[:track_id])
       track.checker = 0
       track.save
       redirect_to track_path(track)
    end
    
    def historypage
        @habits = Habit.all
        @tracks = Track.all
    end
    
    private
    
    def track_params
        params.require(:track).permit( :name, :streak, :habit_done)
    end
    
end
