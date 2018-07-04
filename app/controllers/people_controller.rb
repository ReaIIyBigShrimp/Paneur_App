class PeopleController < ApplicationController
    layout 'country'

    def show
        # Get single person from database using personID
        @person = Person.find(params[:id])

        @related_people = @person.people
        @country = find_country_for_person(params[:id])
        render('show')
    end
    # I'm sorry Daniel. Fix it please(It does work) :)
    def find_country_for_person(person)
        country = Country.find(Elite.find(PeopleElite.where("PersonId = #{person}").EliteId).CountryId)
        
    end
end
