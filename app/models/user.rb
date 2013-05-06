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
  has_many :user_roles, :dependent => :destroy
  has_many :Videos
  has_many :board_infos, :dependent => :destroy
  validates :name, :email, :presence => true
  has_many :authentications

  def description
    if self.user_roles.empty?
      "just a user"
    elsif self.board_infos.empty?
      "an admin with no board info"
    else
      "the #{self.board_infos[0].full_title}"
    end
  end
end
