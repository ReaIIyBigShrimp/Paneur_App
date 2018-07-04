class MapController < ApplicationController
  # Define layout here
  # Override default application layout
  layout "map"
  
  #layout :select_layout
  
  def select_layout
    case action_name
    when "map"
      "map"
    when "country"
      "country"
    else
      "application"
    end
  end


  def index
    # To act as index page.
  end

  
end
