class CreateUserSessions < ActiveRecord::Migration[5.1]
  def change
    create_table "users_sessions", id: false, force: :cascade do |t|
      t.integer "id"
      t.integer "user_id"
      t.text "hash"

      t.timestamps
    end
  end
end
