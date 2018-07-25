json.extract! player, :id, :first_name, :last_name, :state_name, :country_name, :game, :created_at, :updated_at
json.url player_url(player, format: :json)
