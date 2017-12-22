class Location
  include Mongoid::Document
  embedded_in :vehicle
  field :lattitude, type: String
  field :longitude, type: String
  field :address, type: String
  field :vehicle_id, type: Integer
end
