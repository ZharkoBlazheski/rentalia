# frozen_string_literal: true

FactoryBot.define do
  factory :room do
    bed_capacity { rand(1..4) }
    breakfast { [true, false].sample }
    parking { [true, false].sample }
    tv { [true, false].sample }
    books { [true, false].sample }
    balcony { [true, false].sample }
    yard { [true, false].sample }
    pet_friendly { [true, false].sample }
    hair_dryer { [true, false].sample }
    warm_water { [true, false].sample }
    smoke_alarm { [true, false].sample }
    smoking_allowed { [true, false].sample }
    refrigirator { [true, false].sample }
    microwave { [true, false].sample }
    security_camera { [true, false].sample }
    room_number { Faker::Number.unique.number(digits: 2) }
    other { 'MyString' }
  end
end
