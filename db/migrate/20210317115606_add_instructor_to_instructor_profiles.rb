class AddInstructorToInstructorProfiles < ActiveRecord::Migration[6.1]
  def change
    add_reference :instructor_profiles, :instructor, null: false, foreign_key: true
  end
end
