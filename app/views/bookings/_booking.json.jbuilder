json.extract! booking, :id, :instructor_id, :user_id, :student_id, :timeslot_id, :date, :cost, :created_at, :updated_at
json.url booking_url(booking, format: :json)
