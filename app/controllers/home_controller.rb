class HomeController < ApplicationController
  layout 'site'

  def index
    @page = Page.find_by_title('welcome')

    respond_to do |format|
      format.html { render :template => "pages/show" }
      format.xml  { render :xml => @page }
    end
  end
end
