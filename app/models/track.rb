class Track < ActiveRecord::Base
    belongs_to :habit
    before_save :default_values
    
    def default_values
         self.streak ||= '0'
    end
end
