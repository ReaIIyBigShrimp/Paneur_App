class CountriesController < ApplicationController
    #Overwrites the default "application" layout
    layout "country"

    def show
        
        @country = Country.find(params[:id])
        render('show')
        # Test
        
        #@country = Country.find(1)
        
    end
end
