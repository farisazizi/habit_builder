class TrackerController < ApplicationController
    def home
        @tracks = Track.find(1)
    end
    
    def index
        @track = Track.find(1)
    end
    
    
    private
    
    def user_params
      params.require(:track).permit(:name, :date, :streak, :habit_done)
    end
    
end
