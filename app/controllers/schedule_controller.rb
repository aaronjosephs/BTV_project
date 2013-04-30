class ScheduleController < ApplicationController
  def index
		@cal = Google::Calendar.new(:username => 'fauxbtv@gmail.com',
                           :password => 'bingbtv2013')
		t =Time.now
		@block = 60*60*12
		t = t + (@block)
		@cal = @cal.find_events_in_range(Time.now,t )
		while(@cal ==nil)
			t = t + (@block)
			@cal = @cal.find_events_in_range(Time.now,t )
		end
		@tmp = @cal.find_all { |e| e and e.start_time }
		@cal = @tmp.uniq.sort_by { |obj| obj.start_time }
  end
end

