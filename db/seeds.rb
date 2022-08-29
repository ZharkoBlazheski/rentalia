require 'factory_bot_rails'
include FactoryBot::Syntax::Methods

puts "Seeding started..."

puts "Creating users..."
create(:user, first_name: "John", last_name: "Smith", email: "user@test.com")

10.times do
    create(:user)
end

puts "Creating apartments..."
10.times do
    create(:apartment)
end

puts "Seeding completed!"
