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

require 'test_helper'

class BoardInfoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
