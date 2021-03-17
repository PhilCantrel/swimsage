json.extract! instructor_profile, :id, :firstname, :lastname, :phone, :address, :rate, :created_at, :updated_at
json.url instructor_profile_url(instructor_profile, format: :json)
