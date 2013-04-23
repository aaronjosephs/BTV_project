class User < ActiveRecord::Base
  has_many :User_roles, :dependent => :destroy
  has_many :Videos
  
  validates :name, :email, :presence => true
  attr_accessible :email, :name
end
