puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "020 8392 9123", category: "chinese" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "020 2383 4839", category: "italian" }
st_john = { name: "St John", address: "26 St. John Street, London, EC1M 4AY", phone_number: "020 7251 0848", category: "french" }
toklas = { name: "Toklas", address: "1 Surrey Street, London, WC2R 2ND", phone_number: "020 3930 8592", category: "italian" }
river_cafe = { name: "River Cafe", address: "Thames Wharf, Rainville Road, London W6 9HA", phone_number: "020 7386 4200", category: "italian" }

[dishoom, pizza_east, st_john, toklas, river_cafe].each do |attribute|
  restaurant = Restaurant.create!(attribute)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
