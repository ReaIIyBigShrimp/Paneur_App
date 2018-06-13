# Inherits from 'CountriesController'
class ElitesController < ApplicationController
    #Overwrites the default "application" layout
    layout "country"
    # Find country for elite
    
    before_action :find_country
    
    

    def index
        @elites = @country.elites
        #@country = Country.first
        render ('index')
    end
    def show
        respond_to do |format|
            format.html {
                @country = Country.first
                @elite = Elite.find(params[:id])
            }
        end


        # Load view after assigning the variable
        
        # Test
        #@country = Country.find(1)
    end

    private 

    def find_country
        # Find country for elite  
       @country = Country.find(params[:country_id])   
    end 
end
