class AddDaytimeToTimeslots < ActiveRecord::Migration[6.1]
  def change
    add_reference :timeslots, :daytime, null: false, foreign_key: true
  end
end
