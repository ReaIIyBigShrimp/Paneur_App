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
    has_many :people_elites         , foreign_key: :PersonId
    
    # OtherPerson
    has_many :person_persons        , foreign_key: :PersonId, class_name: "Relations::PersonPerson"
    
    
    def people
        Person.find_by_sql(
            "SELECT p.* FROM \"People\" p
            LEFT JOIN \"PersonPerson\" r1 
                ON p.\"Id\" = r1.\"PersonId\" 
                AND r1.\"OtherPersonId\" = #{self.Id}
            LEFT JOIN \"PersonPerson\" r2
                ON p.\"Id\" = r2.\"OtherPersonId\" 
                AND r2.\"PersonId\" = #{self.Id}
            WHERE r1.\"PersonId\" IS NOT NULL OR r2.\"PersonId\" IS NOT NULL;"
        )
    end
end