require 'factory_bot_rails'
include FactoryBot::Syntax::Methods

puts "Seeding started..."

puts "Creating users..."
default_user = create(:user, first_name: "John", last_name: "Smith", email: "user@test.com")
5.times do
    create(:apartment, user_id: default_user.id)
end

puts "Creating apartments..."
10.times do
    user = create(:user)
    3.times do
        create(:apartment, user_id: user.id)
    end
end

puts "Creating rooms..."
15.times do
    create(:room)
end

puts "Seeding completed!"
