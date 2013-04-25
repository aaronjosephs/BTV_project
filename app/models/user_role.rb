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

class UserRole < ActiveRecord::Base
  belongs_to :User
  validate :user_id, :presence => true
  validates :role, {
  	:presence => true,
  	:allow_blank => false,
  	:allow_nil => false,
  }
  attr_accessible :role
end
