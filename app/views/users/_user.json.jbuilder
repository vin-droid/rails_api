json.extract! user, :id, :username, :status, :age, :city, :avatar_url, :created_at, :updated_at
json.url user_url(user, format: :json)
