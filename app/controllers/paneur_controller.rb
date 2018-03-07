class PaneurController < ApplicationController
  # Define layout here
  # Override default application layout
  #layout "map"
  
  layout :select_layout

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


  def map
    # To act as index page.
  end

  def overview
    # Testing database connection
    # If successful, this array will
    # contain the folders.
    @folders = Folder.all
  end

  def archival_sources
    # Get all folders
    @folders = Folder.all
  end

  def country
    #render layout: "country"
    # Get short countries array.
    @countries = Country.all
  end
end
