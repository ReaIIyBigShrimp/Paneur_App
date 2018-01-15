class Nationality < ApplicationRecord
    self.table_name = "Nationalities"
    validates_presence_of :Country, :NationalityAdjective
    
    has_many :person_nationalities, foreign_key: :NationalityId        , class_name: "Relations::PersonNationality"
    has_many :people              , through: :person_nationalities, class_name: "Person"

end
