# Inherits from 'CountriesController'
class ElitesController < ApplicationController
    #Overwrites the default "application" layout
    layout "country"
    # Find country for elite
    
    before_action :find_country, except: :download_pdf

    def index
        @elites = @country.elites
    end

    def show
        @elite = Elite.find(params[:id])
    end
    
    # Download file from public folder
    def download_pdf()
        send_file(
          "#{Rails.root}/public/DOC 0001 DSC06246.pdf",
          filename: "DOC 0001 DSC06246",
          type: "application/pdf"
        )
    end

    private 

    def find_country
        # Find country for elite  
       @country = Country.find(params[:country_id])   
    end 
end
