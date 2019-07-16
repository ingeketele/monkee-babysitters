class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :babysitter, foreign_key: true
      t.date :start_time
      t.integer :duration_per_hour
      t.integer :price_per_hour
      t.string :status

      t.timestamps
    end
  end
end
