class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.datetime :departure_time
      t.references :departure_airport, foreign_key: false
      t.datetime :arrival_time
      t.references :arrival_airport, foreign_key: false

      t.timestamps
    end
    add_index :flights, :departure_time
    add_index :flights, :arrival_time
  end
  add_foreign_key :flights, :airports, column: :departure_airport_id
  add_foreign_key :flights, :airports, column: :arrival_airport_id
end
