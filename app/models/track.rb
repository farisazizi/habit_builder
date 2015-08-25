class Track < ActiveRecord::Base
    belongs_to :habit
    belongs_to :user
    before_save :default_values
    
    def default_values
         self.streak ||= '0'
         self.compday ||= '0'
         self.skipdays ||= '0'
    end
end
