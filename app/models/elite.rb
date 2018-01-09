class Elite < ApplicationRecord
    self.table_name = "Elites"
    validates_presence_of :CountryId, :Name, :TypeId

    # One to one relationships
    belongs_to :country      , foreign_key: :CountryId
    belongs_to :elite_type   , foreign_key: :TypeId
    # Many Files
    has_many :elite_documents, foreign_key: :EliteId    , class_name: "Relations::EliteDocument"
    has_many :files          , through: :elite_documents, class_name: "DBFile"
    
    # Copied from "language.rb" as reference
    # has_many :file_languages , foreign_key: :LanguageId , class_name: "Relations::FileLanguage"
    # has_many :files          , through: :file_languages , class_name: "DBFile"
end