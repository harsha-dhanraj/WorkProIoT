json.extract! vehicle, :id, :name, :company, :engine_number, :color, :type, :owner, :mobile, :address, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
