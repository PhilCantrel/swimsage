class RemoveTimeFromTimeslots < ActiveRecord::Migration[6.1]
  def change
    remove_column :timeslots, :time, :time
  end
end
