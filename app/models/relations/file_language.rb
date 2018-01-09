module Relations
    class FileLanguage < ApplicationRecord
        self.table_name   = "FileLanguage"
        self.primary_keys = :LanguageId, :FileId
        # Required values
        validates_presence_of :LanguageId, :FileId
        
        #after_initialize :readonly!
        #has_many :elites, foreign_key: :TypeId
        belongs_to :file   , foreign_key: :FileId, class_name: "DBFile"
        belongs_to :language, foreign_key: :LanguageId

        # TO DO
    end
end
