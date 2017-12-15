class CreateFGroups < ActiveRecord::Migration[5.1]
  
  def change
    create_table "f_groups", id: false, force: :cascade do |t|
      t.integer "id"
      t.text "title"
      t.text "permissions"

      t.timestamps
    end
  end
end
