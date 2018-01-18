class Person < ApplicationRecord
    self.table_name = "People"
    validates_presence_of :DateOfBirth, :DateOfBirth, :Name, :Surname
    
    # Nationalities
    has_many :person_nationalities  , foreign_key: :PersonId, class_name: "Relations::PersonNationality"
    has_many :nationalities         , through: :person_nationalities

    #Documents
    has_many :person_documents      , foreign_key: :PersonId, class_name: "Relations::PersonDocument"
    has_many :files                 , through: :person_documents

    # Elites
    has_many :people_elites         , foreign_key: :PersonId, class_name: "PeopleElite"
    
    # Reference - Remove
    #has_many :files                 , foreign_key: :TypeId , class_name: "DBFile"
end