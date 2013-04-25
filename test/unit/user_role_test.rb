# == Schema Information
#
# Table name: user_roles
#
#  id         :integer          not null, primary key
#  User_id    :integer
#  role       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserRoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
