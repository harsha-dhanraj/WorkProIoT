class Patient
  include Mongoid::Document
  embedded_in :user
  field :name, type: String
  field :disease, type: String
  field :personal_contact_no, type: String
  field :emergency_contact_no, type: String
  field :address, type: String
  field :user_id, type: Integer
end
