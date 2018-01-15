module Relations
    class EliteDocument < ApplicationRecord
        self.table_name   = "EliteDocument"
        self.primary_keys = :EliteId, :FileId
        validates_presence_of :EliteId, :FileId
        # after_initialize :readonly!
        # Relationships for junction entity
        belongs_to :elite  , foreign_key: :EliteId
        belongs_to :file   , foreign_key: :FileId, class_name: "DBFile"
    end
end