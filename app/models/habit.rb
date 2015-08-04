class Habit < ActiveRecord::Base
    
    has_one :track, dependent: :destroy
    
    
    # def make_tracker
    #   self.track = Track.new
    #   self.track.save
    # end
    
    
    
    # def track_params
    #   params.require(:track).permit(:name, :date, :streak, :habit_done)
    # end
end
