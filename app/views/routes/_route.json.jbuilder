json.extract! route, :id, :origin, :destination, :distance, :tollbooths_2_to_4_edges, :tollbooths_5_to_6_edges, :days, :created_at, :updated_at
json.url route_url(route, format: :json)
