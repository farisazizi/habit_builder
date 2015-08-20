class Habit < ActiveRecord::Base
    belongs_to :user
    validate :habits_count
    
    has_one :track, dependent: :destroy
    # def make_tracker
    #   self.track = Track.new
    #   self.track.save
    # end
    
    
    
    # def track_params
    #   params.require(:track).permit(:name, :date, :streak, :habit_done)
    # end
    private
    
    def habits_count
        return unless self.user.habits.size > 2
        if self.user.habits.size > 2
          errors.add(:base, "Let's only work on 2 habits at a time")
          return false
        end
    end
end
