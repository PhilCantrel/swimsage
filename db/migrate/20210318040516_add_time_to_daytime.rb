class AddTimeToDaytime < ActiveRecord::Migration[6.1]
  def change
    add_column :daytimes, :time, :string, limit: 5
  end
end
