class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :instructor, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true
      t.references :timeslot, null: false, foreign_key: true
      t.date :date
      t.integer :cost

      t.timestamps
    end
  end
end
