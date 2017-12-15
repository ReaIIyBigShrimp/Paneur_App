class PaneurController < ApplicationController
  def map
    # To act as index page.
  end

  def overview
    @folders = Folder.all
  end

  def archival_sources
    # Get all folders
    @folders = Folder.all
  end

  def country
    # Get short countries array.
    @countries = Country.all
  end
end
