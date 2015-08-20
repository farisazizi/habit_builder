class Track < ActiveRecord::Base
    belongs_to :habit
    before_save :default_values
    
    def default_values
         self.streak ||= '0'
         self.compday ||= '0'
         self.skipdays ||= '0'
         self.checker ||= '0'
    end
end
