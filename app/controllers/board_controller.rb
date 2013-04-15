class BoardController < ApplicationController

	def index
		 puts params[:production]
		/@boardMembers = User.all/
	end

	def show
	end
end