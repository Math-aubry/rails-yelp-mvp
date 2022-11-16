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
titi_palacio = { name: 'Titi Palacio', address: '21 rue Haxo, Marseille', category: 'french' }
splendido =  { name: 'Splendido', address: '16-18, rue de le République, Marseille', category: 'italian' }
frittas = { name: 'Frittas', address: '37 rue Patate, Marseille', category: 'belgian' }
petit_chinese = { name: 'Petit Chinese', address: '444 rue Asia, Marseille', category: 'chinese' }
sushi_shop = { name: 'Sushi Shop', address: '54 Place Lully, Marseille', category: 'japanese' }

[titi_palacio, splendido, frittas, petit_chinese, sushi_shop].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
