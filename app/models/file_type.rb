class FileType < ApplicationRecord
    self.table_name = "FileTypes"
    validates_presence_of :Name
    
    after_initialize :readonly!
    
    has_many :files, foreign_key: :TypeId, class_name: "DBFile"
end