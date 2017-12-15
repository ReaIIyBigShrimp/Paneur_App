class CreateUploads < ActiveRecord::Migration[5.1]
  def change
    create_table "uploads", id: false, force: :cascade do |t|
      t.integer "upload_id"
      t.integer "uploaddate"
      t.integer "User"
      t.text "type"
      t.integer "folder"
      t.integer "location"
      t.text "title"

      t.timestamps
    end
  end
end
