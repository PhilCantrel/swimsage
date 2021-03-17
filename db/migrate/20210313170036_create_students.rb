class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :firstname, limit: 20
      t.string :lastname, limit: 20
      t.date :dob
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
