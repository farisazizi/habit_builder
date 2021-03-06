class Habit < ActiveRecord::Base
    belongs_to :user
    has_one :track, dependent: :destroy
    validate :habits_count
    validates :habit_title,  presence: true

    private
    
    def habits_count
        return unless self.user.habits.size > 2
        if self.user.habits.size > 2
          errors.add(:base, "Let's only work on 2 habits at a time")
          return false
        end
    end
end
