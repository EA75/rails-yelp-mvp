# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
louchebem = { name: 'Louchebem', address: 'Place St Eustache Paris', phone_number: '0142210871', category: 'french' }
ischia = { name: 'Ischia', address: 'rue de Capri Paris', phone_number: '0142210871', category: 'italian' }
tiger = { name: 'Tiger Milk', address: 'près de chez moi', phone_number: '0198210871', category: 'chinese' }
dede = { name: 'Dédé la frite', address: 'à côté de chez moi', phone_number: '0198210871', category: 'belgian' }
naruto = { name: 'Naruto specialties', address: 'rue St Anne', phone_number: '0198219991', category: 'japanese' }

[louchebem, ischia, tiger, dede, naruto].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
