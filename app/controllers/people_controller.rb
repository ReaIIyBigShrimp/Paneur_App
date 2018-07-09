class PeopleController < ApplicationController
    layout 'country'
    
    # Layout 'country' uses the @country instance variable
    
    # This method is called before the show action
    # Returns the @country instance variable
    before_action :find_country_for_person
    
    def show
        # Get single person from database using personID
        @person = Person.find(params[:id])
        # Used for the related people content
        @related_people = @person.people
        render('show')
    end
    
    def find_country_for_person()
        # Gets CountryID through Elite,
        # Gets EliteId through PeopleElite
        # Gets PeopleElite based on PersonId
        # ------------------------        
        # Note - Person must be associated with a PeopleElite object
        # Change if not all person entities are connected to a PeopleElite entity
        if PeopleElite.find_by(PersonId: params[:id]) != nil
            @country = Country.find(Elite.find(PeopleElite.find_by(PersonId: params[:id]).EliteId).CountryId)
        else
            @country = Country.first
        end
        
    end
end
