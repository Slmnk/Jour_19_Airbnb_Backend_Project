# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
City.destroy_all
Listing.destroy_all
Reservation.destroy_all
puts "The previous database has been erased."


puts 'CITIES'
5.times {
  c = City.create!(
    name: Faker::Games::Pokemon.location,
    zip: Faker::Base.regexify(/[0-8][0-9][0-9]{3}/)
  )
  puts "city #{c.name}"
}

puts 'USERS'
10.times {
  u = User.create!(
    name: Faker::Name.first_name,
    email: Faker::Internet.email,
    description: Faker::Lorem.sentence(10),
    phone: Faker::Base.regexify(/^0[1-9](\d{2}){4}$/)
  )
  puts "user #{u.name} with phone #{u.phone}"
}

# manque la création de 50 listings + la fonctionnalité associée (pour chaque listing, créer 5 dans le passé, 5 dans le futur)
