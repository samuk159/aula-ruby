json.extract! user, :id, :name, :birthday, :weight, :bio, :created_at, :updated_at
json.url user_url(user, format: :json)
