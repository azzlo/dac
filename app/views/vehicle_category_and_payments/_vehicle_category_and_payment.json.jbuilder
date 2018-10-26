json.extract! vehicle_category_and_payment, :id, :category, :payment_per_km, :payment_per_return_km, :created_at, :updated_at
json.url vehicle_category_and_payment_url(vehicle_category_and_payment, format: :json)
