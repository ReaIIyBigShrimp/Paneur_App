module Relations
    class PersonDocument < ApplicationRecord
        self.table_name = "PersonDocument"
        self.primary_keys = :PersonId, :FileId
        validates_presence_of :PersonId, :FileId
        
        #belongs_to :nationality   , foreign_key: :NationalityId
        #belongs_to :people        , foreign_key: :PersonId, class_name: "Person"
        belongs_to :people         , foreign_key: :PersonId, class_name: "Person"
        belongs_to :files          , foreign_key: :FileId, class_name: "DBFile" 
    end
end