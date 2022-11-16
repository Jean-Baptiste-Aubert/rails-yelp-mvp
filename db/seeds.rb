# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#RES
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

tome = {name: "Tomé", address: "3 rue Romarin, 69001 Lyon", phone_number: "+33 4 78 72 86 61", category: "japanese"}
frites_alors = {name: "Frites alors !", address: "20 rue Terme, 69001 Lyon", phone_number: "+33 4 78 58 61 73", category: "belgian"}
placid_cafe = {name: "Placid Café", address: "23 rue Rene Leynaud, 69001 Lyon", phone_number: "+33 4 78 39 76 50", category: "french"}
mangiabuono = {name: "Mangiabuono", address: "48 Rue Sergent Blandan, 69001 Lyon", phone_number: "+33 9 86 71 69 45", category: "italian"}
tokoyo = {name: "Tokoyo", address: "5 rue Desiree, 69001 Lyon", phone_number: "+33 9 83 78 37 87", category: "chinese"}


[tome, frites_alors, placid_cafe, mangiabuono, tokoyo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
