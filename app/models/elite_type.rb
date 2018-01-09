class EliteType < ApplicationRecord
    self.table_name = "EliteTypes"
    validates_presence_of :Name
    # Read only from database
    after_initialize :readonly!
    
    # One elite type for many elites
    has_many :elites, foreign_key: :TypeId
end