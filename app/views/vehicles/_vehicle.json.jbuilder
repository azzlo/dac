json.extract! vehicle, :id, :brand, :type, :year, :vehicle_category_and_payment_id, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
