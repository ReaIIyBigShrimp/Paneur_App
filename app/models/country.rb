class Country < ApplicationRecord
    self.table_name = "Countries"
    validates_presence_of :Name

    has_many :elites, foreign_key: :CountryId
    
    # Get elites for country
    def get_elites ; Elite.where({CountryId: self.Id}) ; end

    # returns documents for country through associated elites for that country.
    def get_documents
        documents = []
        # Elites for country
        # elites pushes to array
        Elite.where(CountryId: self.Id).each do |e|
            e.files.each{ |f| documents.push(f) } # Files for each elite
        end
        # return documents
        return Elite.where(CountryId: self.Id).map(&:files).flatten
        return Elite.where(CountryId: self.Id).map{|e| e.files}.flatten
    end
    
    def test
        files = self.get_documents()
        
        files.each do |thing|
            puts thing.ArchivalCode
        end
    end
end