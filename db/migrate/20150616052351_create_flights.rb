class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :name
      t.date :date
      t.string :origin
      t.string :destination
      t.integer :plane_id

      t.timestamps null: false
    end
  end
end
