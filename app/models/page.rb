class Page < ActiveRecord::Base
  acts_as_list
  has_attachment  :content_type => ['application/pdf', 'application/msword', 'text/plain'],
                  :storage => :file_system, 
                  :path_prefix => "public/files"
  CATEGORIES = ["Top Menu", "Side Menu"]
end
