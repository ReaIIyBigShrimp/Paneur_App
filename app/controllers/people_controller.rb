class PeopleController < ApplicationController
    layout 'person'

    def show
        #render('person')
        @person = Person.find(params[:id])
        render('show')
    end
end
