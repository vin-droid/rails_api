class User < ApplicationRecord
	self.per_page = 5
	scope :username, ->(username){ where('username ILIKE ?', "%#{username}%")}
end
