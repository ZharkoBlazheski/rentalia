require 'factory_bot_rails'
include FactoryBot::Syntax::Methods

puts "Seeding started..."

puts "Creating users..."
default_user = create(:user, first_name: "John", last_name: "Smith", email: "user@test.com")
4.times do
    apartment = create(:apartment, user: default_user)
    rand(1..4).times do
        create(:room, apartment: apartment)
    end
end

puts "Creating apartments and rooms..."
10.times do
    rand(1..4).times do
        apartment = create(:apartment)
        rand(1..4).times do
            create(:room, apartment: apartment)
        end
    end
end

puts "Seeding completed!"
