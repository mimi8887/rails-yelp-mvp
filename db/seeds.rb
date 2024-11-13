# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
Restaurant.create!(name: 'Dishoom', address: '7 Boundary St, London E2 7JE',
                   phone_number: '08031159322', category: 'italian')
puts 'Created Dishoom'

Restaurant.create!(name: 'Pizza Hut', address: '7 pizza St',
                   phone_number: '0120999031', category: 'italian')
puts 'Created Pizza Hut'

Restaurant.create!(name: 'Sucre et Sel', address: 'Torstraße 132',
                   phone_number: '035469877726', category: 'french')
puts 'Created Sucre et Sel'

Restaurant.create!(name: 'Waffle Brothers', address: 'Wafflestreet 60',
                   phone_number: '01209990555', category: 'belgian')
puts 'Created Waffle Brothers'

Restaurant.create!(name: 'Noodles Plus', address: 'noodlestreet 60',
                    phone_number: '01209990555', category: 'chinese')
puts 'Created Noodle Plus'

puts "Finished! Created #{Restaurant.count} restaurants."
