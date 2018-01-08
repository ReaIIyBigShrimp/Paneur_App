class Country < ApplicationRecord
    self.table_name = "Countries"
    validates_presence_of :Name

    has_many :elites, foreign_key: :CountryId
end