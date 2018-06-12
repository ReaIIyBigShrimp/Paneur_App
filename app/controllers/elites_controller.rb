# Inherits from 'CountriesController'
class ElitesController < ApplicationController
    #Overwrites the default "application" layout
    layout "country"
    # Find country for elite
    
    before_action :find_country
    
    def find_country
        # Find country for elite  
       @country = Country.find(params[:country_id])   
    end 

    def index
        @elites = @country.elites
        #@country = Country.first
        render ('index')
    end
    def show
        @country = Country.first
        @elite = Elite.find(params[:id])
        # Load view after assigning the variable
        render('show')
        
        # Test
        #@country = Country.find(1)
    end
end
