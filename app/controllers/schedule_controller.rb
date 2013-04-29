class ScheduleController < ApplicationController
  def index
		@cal = Google::Calendar.new(:username => 'fauxbtv@gmail.com',
                           :password => 'bingbtv2013')
  end
end

