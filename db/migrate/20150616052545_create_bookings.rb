class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :flight_id
      t.integer :aisle
      t.integer :seat

      t.timestamps null: false
    end
  end
end
