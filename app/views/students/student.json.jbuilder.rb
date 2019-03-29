json.extract! student, :id, :student_name, :student_mobile_number, :student_address, :student_email, :student_password, :student_fav_sebject, :student_hobies, :created_at, :updated_at
json.url user_url(student, format: :json)
