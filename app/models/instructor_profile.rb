class InstructorProfile < ApplicationRecord
    belongs_to :instructor
    has_one_attached :profile_picture
end
