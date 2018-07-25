# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
10.times do
  user = User.create(first_name: Faker::Name.name.split[0] , last_name: Faker::Name.name.split[1], email: Faker::Internet.email)
end

require 'faker'
15.times do
  pin = Pin.create(user_id: Faker::Number.between(1, User.last.id) , url: Faker::Avatar.image)
end

require 'faker'
8.times do
  commentaire = Commentaire.create(user_id: Faker::Number.between(1, User.last.id) , pin_id: Faker::Number.between(1, Pin.last.id) , content: Faker::TheFreshPrinceOfBelAir.quote)
end