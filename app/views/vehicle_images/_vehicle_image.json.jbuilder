json.extract! vehicle_image, :id, :vehicle_id, :image_path, :primary_image, :position, :created_at, :updated_at
json.url vehicle_image_url(vehicle_image, format: :json)
