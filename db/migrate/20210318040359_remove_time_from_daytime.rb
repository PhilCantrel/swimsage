class RemoveTimeFromDaytime < ActiveRecord::Migration[6.1]
  def change
    remove_column :daytimes, :time, :time
  end
end
