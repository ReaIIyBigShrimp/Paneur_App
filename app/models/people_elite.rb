class PeopleElite < ApplicationRecord
    self.table_name = "PeopleElites"
    validates_presence_of :DateOfEmployment, :DateOfResignation, :EliteId, :MapVisible, :PersonId, :Position
    
    belongs_to :elite           , foreign_key: :EliteId
    belongs_to :person          , foreign_key: :PersonId
    
end
