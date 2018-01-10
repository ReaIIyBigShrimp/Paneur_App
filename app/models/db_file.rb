class DBFile < ApplicationRecord
    self.table_name = "Files"
    
    validates_presence_of :Date
    #after_initialize :readonly!

    belongs_to :file_type       , foreign_key: :TypeId
    
    # File languages
    has_many   :file_languages  , foreign_key: :FileId      , class_name: "Relations::FileLanguage"
    has_many   :languages       , through: :file_languages
    
    # Elites
    has_many   :elite_documents , foreign_key: :FileId , class_name: "Relations::EliteDocument"
    has_many   :elites          , through: :elite_documents
end