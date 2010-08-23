class HomeController < ApplicationController
  layout 'site'

  def index
    @main_pages = Page.find(:all, :conditions => { :parent_id => nil })
    @conf = { :site_name => "Shambhala People of Color Scholarship Fund" }
    respond_to do |format| 
      format.html # index.html.erb  
      format.xml { render :xml => @posts } 
    end 
  end
end
