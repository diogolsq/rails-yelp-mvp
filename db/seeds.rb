puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating 100 restaurants..."

100.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )

puts 'done'
end
