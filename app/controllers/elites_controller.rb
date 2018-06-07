class ElitesController < ApplicationController
    #Overwrites the default "application" layout
    layout "country"

    def show
        
        @elite = Elite.find(params[:id])
        # Load view after assigning the variable
        render('show')
        
        # Test
        #@country = Country.find(1)
    end
end
