# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def flash_helper
    r = [:notice, :warning, :message, :error].map do |f| 
      content_tag(:div, flash[f], :class => f) if flash[f] 
    end
    r
  end
end
