FactoryBot.define do
  factory :room do
    bed_capacity { 1 }
    breakfast { false }
    parking { false }
    tv { false }
    books { false }
    balcony { false }
    yard { false }
    pet_friendly { false }
    hair_dryer { false }
    warm_water { false }
    smoke_alarm { false }
    smoking_allowed { false }
    refrigirator { false }
    microwave { false }
    security_camera { false }
    room_number { 1 }
    other { "MyString" }
  end
end
