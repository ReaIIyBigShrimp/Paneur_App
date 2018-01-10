module Relations
    class PersonNationality < ApplicationRecord
        self.table_name = "PersonNationality"
        self.primary_keys = "NationalityId", "PersonId"
        validates_presence_of :NationalityId, :PersonId
        
        # One to one
        belongs_to :nationality   , foreign_key: :NationalityId
        belongs_to :person        , foreign_key: :PersonId
        
    end
end
