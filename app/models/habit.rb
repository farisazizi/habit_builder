class Habit < ActiveRecord::Base
    
    has_one :track, dependent: :destroy
    belongs_to :user
    validates :user_id, presence: true
    before_save :check_habit_quota

  private 

  def check_habit_quota
    if self.habits.user_id.count > 2
      self.errors.add(:base, "You've reached maximum habit you can build.")
      return false
    end
  end
  
    # def make_tracker
    #   self.track = Track.new
    #   self.track.save
    # end
    
    
    
    # def track_params
    #   params.require(:track).permit(:name, :date, :streak, :habit_done)
    # end
end
