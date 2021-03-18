class InstructorProfile < ApplicationRecord
    belongs_to :instructor
    has_one_attached :profile_picture
    before_create :init_params
    after_create :init_instructor_timeslots


    def init_params
      @params = Instructor.order(created_at: :desc).first.id
    end

    def init_instructor_timeslots
      @times = Daytime.all
      @times.each do |time|
          Timeslot.create!(available: false, booked: false, instructor_id: @params, daytime_id: time.id)
      end
    end
end
