module ApplicationHelper
  def logo
    logo = image_tag("/images/logo.png", :alt => title, :class => "round")
  end
  
  # Return a title on a per-page basis.
  def title
    base_title = "+EVlive | Poker Tournament Management App"
	if @title.nil?
	  base_title
	else
	  "#{base_title} | #{@title}"
	end
  end
end
