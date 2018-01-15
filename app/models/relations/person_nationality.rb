module Relations
    class PersonNationality < ApplicationRecord
        self.table_name = "PersonNationality"
        self.primary_keys = :NationalityId, :PersonId
        validates_presence_of :NationalityId, :PersonId
        
        belongs_to :nationality   , foreign_key: :NationalityId
        belongs_to :people        , foreign_key: :PersonId, class_name: "Person"
    end
end
