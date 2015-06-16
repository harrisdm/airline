json.array!(@planes) do |plane|
  json.extract! plane, :id, :name, :aisle, :seat
  json.url plane_url(plane, format: :json)
end
