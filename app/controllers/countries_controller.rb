class CountriesController < ApplicationController
    #Overwrites the default "application" layout
    layout "country"

    def show
        
        @country = Country.find(params[:id])
        # Load view after assigning the variable
        
        # Documents for country
        @documents = @country.get_documents

        # Render view for country.
        # Declare instance variables first.
        render('show')
        # Test
        #@country = Country.find(1)
    end
end
