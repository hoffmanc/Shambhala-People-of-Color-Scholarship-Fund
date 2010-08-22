class HomeController < ApplicationController
  layout 'site'
  def index
    @main_pages = Page.find(:all, :params => { :parent => nil })
    respond_to do |format| 
      format.html # index.html.erb  
      format.xml { render :xml => @posts } 
    end 
  end
end
