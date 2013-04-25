# == Schema Information
#
# Table name: videos
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  url         :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Video < ActiveRecord::Base
  belongs_to :User
end
