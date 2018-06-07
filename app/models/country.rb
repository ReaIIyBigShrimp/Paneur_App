class Country < ApplicationRecord
    self.table_name = "Countries"
    validates_presence_of :Name

    has_many :elites, foreign_key: :CountryId
    
    # Get elites for country
    def get_elites
        return Elite.where({CountryId: self.Id})
    end
    # returns documents for country through associated elites for that country.
    def get_documents
        # Array for all documents
        documents = []
        # Elites for country
        elites = Elite.where({CountryId: self.Id})
        # elites pushes to array
        elites.each do |elite|
            # Files for each elite
            files = elite.files
            if files.count > 0
                #documents.push(elite.files)
                # Add files to array
                files.each do |file|
                    documents.push(file)
                end
            end
        end
        return documents
    end
    # Outputting the file is not working as expected. 
    def test
        files = self.get_documents()
        # output array
        # puts files
        files.each do |thing|
            puts thing.ArchivalCode
        end
    end
end