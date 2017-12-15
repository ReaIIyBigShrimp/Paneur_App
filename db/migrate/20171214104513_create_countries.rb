class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      # Automatically applies the entity
      # with an 'id' column.
      t.text "name"

      t.timestamps
    end
  end
end
