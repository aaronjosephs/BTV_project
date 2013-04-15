class User < ActiveRecord::Base
	belongs_to :board
	references_many :authentications, :dependent => :delete
end
