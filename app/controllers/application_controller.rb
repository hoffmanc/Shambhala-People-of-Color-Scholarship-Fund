# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include AuthenticatedSystem

  layout 'site'

  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :initialize_site_template_vars

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password

  protected
  def initialize_site_template_vars
    @main_pages = Page.find(:all, :conditions => { :parent_id => nil })
    @conf = { :site_name => "Shambhala People of Color Scholarship Fund" }
  end

  def admin_required  
    if !logged_in? || !current_user.isadmin  
      flash[:notice] = "You need to be admin to access that page"   
      session[:return_to] = request.request_uri  
      redirect_to login_path  
    end  
  end  
end
