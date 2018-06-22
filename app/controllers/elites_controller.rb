# Inherits from 'CountriesController'
class ElitesController < ApplicationController
    #Overwrites the default "application" layout
    layout "country"
    # Find country for elite
    
    before_action :find_country

    def index
        @elites = @country.elites
    end

    def show
        @elite = Elite.find(params[:id])
    end

    private 

    def find_country
        # Find country for elite  
       @country = Country.find(params[:country_id])   
    end 
end
