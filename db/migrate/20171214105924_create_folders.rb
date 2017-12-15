class CreateFolders < ActiveRecord::Migration[5.1]
  
  def change
    create_table "folders", id: false, force: :cascade do |t|
      t.integer "folder_id"
      t.integer "master_folder"
      t.text "ha_groups"
      t.text "title"

      t.timestamps
    end
  end
end
