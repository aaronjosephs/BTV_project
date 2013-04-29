class Authentication < ActiveRecord::Base
	belongs_to :user
	validates :provider, :uid, :presence => true
	attr_accessible :provider, :uid, :user_id, :user
end
