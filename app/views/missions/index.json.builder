json.array!(@missions) do |mission|
  json.extract! mission, :id, :name, :description, :parent_id, :created_at, :updated_at, :lft, :rgt, :depth
  json.url mission_url(mission, format: :json)
end
