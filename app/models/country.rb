class Country < ApplicationRecord
    self.table_name = "Countries"
    validates_presence_of :Name

    has_many :elites, foreign_key: :CountryId
    
    # Get elites for country
    def get_elites ; Elite.where({CountryId: self.Id}) ; end

    # returns documents for country through associated elites for that country.
    def get_documents
        return Elite.where(CountryId: self.Id).map(&:files).flatten
    end
    
end