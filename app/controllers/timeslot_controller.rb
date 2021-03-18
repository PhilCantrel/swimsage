def create
    @times = Daytime.all
    @times.each do |time|
        Timeslot.create!(available: false, booked: false, instructor_id: current_instructor.id, daytime_id: time.id)
    end
end