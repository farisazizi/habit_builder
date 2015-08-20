class LandingController < ApplicationController
    
    def front
        if logged_in?
            @user = User.find(current_user.id)
            @habits = Habit.all
            @tracks = Track.all
        end
    end

end
