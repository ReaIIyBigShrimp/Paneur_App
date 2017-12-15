class Folder < ApplicationRecord
    after_initialize :readonly!

    # self.table_name = "folders"
end
