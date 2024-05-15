# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do
  flat = Flat.new(
    name: Faker::Address.community,
    address: Faker::Address.full_address,
    description: Faker::Quotes::Shakespeare.hamlet_quote,
    price_per_night: rand(50..120),
    number_of_guests: rand(1..8)
  )

  flat.save
end
