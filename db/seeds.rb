# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


120.times do |i|
  User.new.tap do |u|
    u.avatar_url = Faker::Avatar.image
	  u.username = Faker::Friends.character
	  u.status = Faker::Friends.quote
	  u.age = rand(23..40)
	  u.save
  end
end
