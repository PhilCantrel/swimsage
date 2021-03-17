json.extract! student, :id, :firstname, :lastname, :dob, :user_id, :created_at, :updated_at
json.url student_url(student, format: :json)
