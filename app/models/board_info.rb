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
  
end
