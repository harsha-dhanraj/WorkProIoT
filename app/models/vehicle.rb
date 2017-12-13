class Vehicle
  include Mongoid::Document
  field :name, type: String
  field :company, type: String
  field :engine_number, type: String
  field :color, type: String
  field :type, type: String
  field :purchased_on, type: Date
  field :owner, type: String
  field :mobile, type: String
  field :address, type: String
end
