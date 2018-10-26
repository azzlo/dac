json.extract! route, :id, :origin, :destination, :distance, :tollbooths, :days, :created_at, :updated_at
json.url route_url(route, format: :json)
