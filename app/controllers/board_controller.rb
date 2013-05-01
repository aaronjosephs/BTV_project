class BoardController < ApplicationController

	def index

		 @board_active = "active"
		 @query = params[:production]
		 which_board = "executive"
		 unless (@query.nil?) then which_board = "production" end
		 all_members = BoardInfo.all_members_of_board(which_board)
		 @all_board_members = []
		 all_members.each do |t|
		 	@all_board_members.push (Hash["name", User.find(t.user_id).name,"email", User.find(t.user_id).email, "title", t.title, "board", t.board, "photo", t.photo, "description", t.description])     
		 end
		 
	end


end


#  user_id     :integer
#  title       :string(255)
#  board       :string(255)
#  photo       :string(255)
#  description :text