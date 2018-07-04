class PeopleController < ApplicationController
    layout 'country'

    def show
        # Get single person from database using personID
        @person = Person.find(params[:id])

        @related_people = @person.people
        @country = find_country_for_person(params[:id])
        render('show')
    end
    
    def find_country_for_person(person)
        # country = Country.find(Elite.find(PeopleElite.where("PersonId = #{person}").EliteId).CountryId)
        Country.find(Elite.find(PeopleElite.first.EliteId).CountryId)
        
    end
end
