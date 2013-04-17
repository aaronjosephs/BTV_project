class BoardController < ApplicationController

	def index
		 @query = params[:production]
		 puts @query
	end

	def show
	end
end