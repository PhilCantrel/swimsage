class RemoveWeekdayFromTimeslots < ActiveRecord::Migration[6.1]
  def change
    remove_column :timeslots, :weekday, :string
  end
end
