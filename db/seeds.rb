# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.destroy_all

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: 'London',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

5.times do
  Flat.create(
  name: Faker::FunnyName.two_word_name,
  address:Faker::Address.city,
  description: ["chinese", "italian", "japanese", "french", "belgian"].sample,
  price_per_night: [75,15,25,26,28,56,78].sample,
  number_of_guests: [1,2,3,4,5,6].sample
  )
end
puts "done with seeding"
