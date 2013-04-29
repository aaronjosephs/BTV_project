class Identity < OmniAuth::Identity::Models::ActiveRecord
  validates_presence_of :name
  validates_uniqueness_of :email
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  validates :password, :length => {:in => 8..32 } #Password must be between 8 and 32 characters
  validates :password, :format => {:with => /(.*([a-zA-Z]+.*[\d]+)|[\d]+.*[a-zA-Z]+)(.*)/,    :message => "Password must have at least one alphabet character and at least one numerical digit." } #password must have at least one alphabet character and at least one digit
  
end


