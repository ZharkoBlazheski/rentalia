require 'factory_bot_rails'
include FactoryBot::Syntax::Methods

puts "Seeding started..."

puts "Creating users..."
create(:user, first_name: "John", last_name: "Smith", email: "user@test.com")

puts "Creating apartments..."
10.times do
    user = create(:user)
    3.times do
        create(:apartment, user_id: user.id)
    end
end

puts "Seeding completed!"
