class Elite < ApplicationRecord
    self.table_name = "Elites"
    validates_presence_of :CountryId, :Name, :TypeId

    belongs_to :country   , foreign_key: :CountryId
    belongs_to :elite_type, foreign_key: :TypeId
end