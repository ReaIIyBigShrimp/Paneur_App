class Language < ApplicationRecord
    self.table_name = "Languages"
    validates_presence_of :Name
    
    # Read only from the database
    after_initialize :readonly!
    
    has_many :file_languages, foreign_key: :LanguageId, class_name: "Relations::FileLanguage"
    has_many :files, through: :file_languages, class_name: "DBFile"
end