class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table "log", id: false, force: :cascade do |t|
      t.integer "userid"
      t.integer "fileid"
      t.integer "folderid"
      t.text "date"
      t.integer "action"
      t.text "title"

      t.timestamps
    end
  end
end
