# == Schema Information
#
# Table name: board_infos
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  title       :string(255)
#  board       :string(255)
#  photo       :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class BoardInfo < ActiveRecord::Base
	belongs_to :user,  :polymorphic => true

	def self.all_members_of_board(string)
		where(:board => string)
	
	end

  def self.find_or_create(user)
    if user.board_infos.empty?
      @board_info = self.new
      user.board_infos << @board_info
      @board_info
    else
      user.board_infos[0]
    end
  end

  def full_title
    "#{self.title.capitalize} for the #{self.board.capitalize} Board"
  end

end
