class CreateDaytimes < ActiveRecord::Migration[6.1]
  def change
    create_table :daytimes do |t|
      t.string :weekday, limit: 10
      t.time :time

      t.timestamps
    end
  end
end
