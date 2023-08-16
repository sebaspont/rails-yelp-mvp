
require 'faker'

10.times do
  restaurant = Restaurant.new(
    name: Faker::Company.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
  restaurant.save!
end
