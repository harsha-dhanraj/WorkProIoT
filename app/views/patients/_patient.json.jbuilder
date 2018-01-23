json.extract! patient, :id, :name, :disease, :personal_contact_no, :emergency_contact_no, :address, :created_at, :updated_at
json.url patient_url(patient, format: :json)
