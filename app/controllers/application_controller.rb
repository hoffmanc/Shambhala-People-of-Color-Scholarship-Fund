# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :initialize_site_template_vars

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  def initialize_site_template_vars
    @main_pages = Page.find(:all, :conditions => { :parent_id => nil })
    @conf = { :site_name => "Shambhala People of Color Scholarship Fund" }
  end
end
