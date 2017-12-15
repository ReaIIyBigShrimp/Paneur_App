class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table "groups", id: false, force: :cascade do |t|
      t.integer "id"
      t.text "name"
      t.text "permissions"

      t.timestamps
    end
  end
end
