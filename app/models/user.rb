devise :database_authenticatable, :registerable, :recoverable, :confirmable, :rememberable, :trackable, :validatable  field :name
  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false   
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  references_many :authentications, :dependent => :delete
  def apply_omniauth(omniauth)
    self.email = omniauth['user_info']['email'] if email.blank?
    apply_trusted_services(omniauth) if self.new_record?
  end
  def apply_trusted_services(omniauth) 
    user_info = omniauth['user_info']
    if omniauth['extra'] && omniauth['extra']['user_hash']
      user_info.merge!(omniauth['extra']['user_hash'])
    end 
    if self.name.blank?
      self.name   = user_info['name']   unless user_info['name'].blank?
      self.name ||= user_info['nickname'] unless user_info['nickname'].blank?
      self.name ||= (user_info['first_name']+" "+user_info['last_name']) unless \
        user_info['first_name'].blank? || user_info['last_name'].blank?
    end  
    if self.email.blank?
      self.email = user_info['email'] unless user_info['email'].blank?
    end 
    self.password, self.password_confirmation = String::RandomString(16)  
    self.confirmed_at, self.confirmation_sent_at = Time.now 
  end
