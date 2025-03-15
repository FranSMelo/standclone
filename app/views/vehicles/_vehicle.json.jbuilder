json.extract! vehicle, :id, :brand_id, :model, :vehicle_type_id, :segment_id, :registration_year, :registration_month, :mileage, :price, :fuel_type_id, :power_hp, :engine_size, :transmission_id, :color, :doors, :condition_id, :description, :status, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
