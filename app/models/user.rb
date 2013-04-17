class User < ActiveRecord::Base
	has_many :authentications
	validates :name, :email, :presence => true
end
