class CreateInstructorProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :instructor_profiles do |t|
      t.string :firstname, limit: 20
      t.string :lastname, limit: 20
      t.string :phone, limit: 15
      t.string :address
      t.integer :rate

      t.timestamps
    end
  end
end
