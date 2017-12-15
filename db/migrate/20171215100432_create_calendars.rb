class CreateCalendars < ActiveRecord::Migration[5.1]
  def change
    create_table "calendar", id: false, force: :cascade do |t|
      t.text "event"
      t.text "description"
      t.integer "starttime"
      t.integer "user_id"
      t.integer "event_id"
      t.integer "cal_id"
      t.text "location"
      t.text "file"

      t.timestamps
    end
  end
end
