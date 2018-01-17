class Product < ApplicationRecord
	before_create :set_product_image

	def set_product_image
		self.image = Faker::Avatar.image
	end
end
