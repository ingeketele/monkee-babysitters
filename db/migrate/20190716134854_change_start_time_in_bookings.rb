class ChangeStartTimeInBookings < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :start_time, :datetime
  end
end
