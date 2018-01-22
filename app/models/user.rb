class User < ApplicationRecord
	self.per_page = 10
	validates :username, uniqueness: true, on: :create
	validates :age, numericality: { only_integer: true }
	scope :username, ->(username){ where('username ILIKE ?', "%#{username}%")}
	has_many :addresses, dependent: :destroy

	accepts_nested_attributes_for :addresses
end
