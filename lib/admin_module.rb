module AdminModule
  def self.included(base)
    base.layout "admin"
    base.before_filter :admin_logged_in
  end

  def admin_logged_in
    #verify an administrator is logged in
  end
end
