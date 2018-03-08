class CountryController < ApplicationController
    # Overwrites 'application' layout
    # to country
    layout "country"
    
    def show
        # Get short countries array.
        @country = Country.find(params[:id])
    end
end
