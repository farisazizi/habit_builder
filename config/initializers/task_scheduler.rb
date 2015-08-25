require 'rubygems'
require 'rufus/scheduler'

scheduler = Rufus::Scheduler.new

# scheduler.every("30s") do
#     @track = Track.all
#     @track.each do |t|
#         t.checker = 0
#         t.save    
#     end
# end

scheduler.cron '0 16 * * *' do
    @track = Track.all
    @track.each do |t|
        t.checker = 0
        t.save    
    end
end