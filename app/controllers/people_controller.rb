class PeopleController < ApplicationController
    layout 'person'

    def show
        render('person')
    end
end
