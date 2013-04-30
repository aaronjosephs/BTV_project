class ScheduleController < ApplicationController
  def index
		@cal = Google::Calendar.new(:username => 'fauxbtv@gmail.com',
                           :password => 'bingbtv2013')
		@current_time = Time.now
		@t =Time.now
		@block = 60*60*12
		@t = @t + (@block)
		@cal = @cal.find_events_in_range(@current_time,@t )
		while(@cal ==nil)
			@t = @t + (@block)
			@cal = @cal.find_events_in_range(@current_time,@t )
		end
		@tmp = @cal.find_all { |e| e and e.start_time }
		@cal = @tmp.uniq.sort_by { |obj| obj.start_time }
  end

	def more
		@block = 60*60*12
		@t = @t + @block
		@cal = @cal.find_events_in_range(@current_time,@t )
		@tmp = @cal.find_all { |e| e and e.start_time }
		@cal = @tmp.uniq.sort_by { |obj| obj.start_time }
	end

	def moreLess
		@block = 60*60*12
		@current_time = @current_time - @block
		@cal = @cal.find_events_in_range(@current_time,@t )
		@tmp = @cal.find_all { |e| e and e.start_time }
		@cal = @tmp.uniq.sort_by { |obj| obj.start_time }
	end
end
		

