# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  # Returns the page title
  def page_title
    "OffThought : #{controller.action_name}"
  end
  
end
