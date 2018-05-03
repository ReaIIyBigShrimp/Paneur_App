class PeopleController < ApplicationController
    layout 'person'

    def show
        # Get single person from database using personID
        @person = Person.find(params[:id])

        @related_people = @person.people
        
        render('show')
    end
end
