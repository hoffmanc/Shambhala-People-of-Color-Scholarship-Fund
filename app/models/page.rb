class Page < ActiveRecord::Base
  acts_as_list
  has_attachment  :content_type => ['application/pdf', 'application/msword', 'text/plain']
  CATEGORIES = ["Top Menu", "Side Menu"]

  #def full_filename(thumbnail = nil)
  #  return nil if thumbnail_name_for(thumbnail).blank?
  #  file_system_path = (thumbnail ? thumbnail_class : self).attachment_options[:path_prefix].to_s
  #  File.join(RAILS_ROOT, file_system_path, *partitioned_path(thumbnail_name_for(thumbnail)))
  #end

end
