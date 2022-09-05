# frozen_string_literal: true

FactoryBot.define do
  factory :apartment do
    association :user
    address { Faker::Address.street_address }
    phone { Faker::PhoneNumber.cell_phone_in_e164 }
    latitude { Faker::Number.decimal(l_digits: 2, r_digits: 7) * [-1, 1].sample }
    longitude { Faker::Number.decimal(l_digits: 2, r_digits: 7) * [-1, 1].sample }
    rooms { Faker::Number.within(range: 1..10) }
  end
end
