json.extract! vehicle, :id, :brand, :vehicle_type, :year, :vehicle_category_and_payment_id, :performance_km_fuel, :edges, :created_at, :updated_at
json.payment @vehicle.vehicle_category_and_payment.payment_per_km
json.return_payment @vehicle.vehicle_category_and_payment.payment_per_return_km
json.url vehicle_url(vehicle, format: :json)
