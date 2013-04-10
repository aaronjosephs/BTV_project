class User < ActiveRecord::Base
	references_many :authentications, :dependent => :delete
end
