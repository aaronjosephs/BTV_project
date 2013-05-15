class ScheduleController < ApplicationController
  def index
		@cal = Google::Calendar.new(:username => 'fauxbtv@gmail.com',
                           :password => 'bingbtv2013', :calendar => 'BTV' )
		@current_time = Time.now
		@t =Time.now
		@block = 60*60*3
		@current_time = @current_time - @block
		@t = @t + (@block)
		@schedule = @cal.find_events_in_range(@current_time,@t )
		#@count = 0
		#while(@schedule.nil? or @count < 3)
			#@count = @count + 1
			#@t = @t + (@block)
			#@schedule = @cal.find_events_in_range(@current_time,@t )
		#end
		if @schedule.nil?	
			@schedule = 1		
		else		
			@tmp = @schedule.find_all { |e| e and e.start_time }
			@schedule = @tmp.uniq.sort_by { |obj| obj.start_time }
		end
  end

	def more
		#@block = 60*60*12
		#@t = @t + @block
		#@cal = @cal.find_events_in_range(@current_time,@t )
		#@tmp = @cal.find_all { |e| e and e.start_time }
		#@cal = @tmp.uniq.sort_by { |obj| obj.start_time }
	end

	def moreLess
		#@block = 60*60*12
		#@current_time = @current_time - @block
		#@cal = @cal.find_events_in_range(@current_time,@t )
		#@tmp = @cal.find_all { |e| e and e.start_time }
		#@cal = @tmp.uniq.sort_by { |obj| obj.start_time }
	end
end
		

