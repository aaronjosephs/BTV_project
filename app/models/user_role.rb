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
