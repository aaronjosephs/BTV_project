class UserRole < ActiveRecord::Base
  belongs_to :User
  attr_accessible :role
end
