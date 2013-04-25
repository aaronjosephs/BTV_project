# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  has_many :User_roles, :dependent => :destroy
  has_many :Videos
  has_many :boardinfo, :dependent => :destroy
  
  validates :name, :email, :presence => true

end
