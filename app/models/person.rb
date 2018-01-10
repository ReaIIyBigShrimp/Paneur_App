class Person < ApplicationRecord
    self.table_name = "People"
    validates_presence_of :DateOfBirth, :DateOfBirth, :Name, :Surname
    
    # Many nationalities for each person
    has_many :person_nationalities  , foreign_key: :NationalityId, class_name: "Relations::PersonNationality"
    has_many :nationalities         , through: :person_nationalities
    
end