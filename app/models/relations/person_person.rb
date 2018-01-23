module Relations
    class PersonPerson < ApplicationRecord
        self.table_name = "PersonPerson"
        self.primary_keys = :PersonId, :OtherPersonId
        validates_presence_of :PersonId, :OtherPersonId

        belongs_to :people         , foreign_key: :OtherPersonId, class_name: "Person"
        # Add the other person association
        # One person is associated with another
        
        #belongs_to :nationality   , foreign_key: :NationalityId
        #belongs_to :people        , foreign_key: :PersonId, class_name: "Person"
        #belongs_to :people         , foreign_key: :PersonId, class_name: "Person"
        #belongs_to :files          , foreign_key: :FileId, class_name: "DBFile" 
    end
end