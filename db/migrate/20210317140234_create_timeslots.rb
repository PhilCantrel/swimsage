class CreateTimeslots < ActiveRecord::Migration[6.1]
  def change
    create_table :timeslots do |t|
      t.string :weekday, limit: 10
      t.time :time
      t.boolean :available
      t.references :instructor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
