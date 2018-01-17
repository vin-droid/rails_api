class User < ApplicationRecord
	self.per_page = 10
	validates :username, uniqueness: true
	validates :age, numericality: { only_integer: true }
	scope :username, ->(username){ where('username ILIKE ?', "%#{username}%")}
end
