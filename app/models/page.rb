class Page < ActiveRecord::Base
  acts_as_list
  CATEGORIES = ["Top Menu", "Side Menu"]
end
