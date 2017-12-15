class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table "users", id: false, force: :cascade do |t|
      t.integer "id"
      t.text "username"
      t.text "password"
      t.text "salt"
      t.text "name"
      t.integer "group"
      t.text "email"
      t.integer "status"

      t.timestamps
    end
  end
end
