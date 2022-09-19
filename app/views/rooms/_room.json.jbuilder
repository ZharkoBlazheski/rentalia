# frozen_string_literal: true

json.extract! room, :id, :bed_capacity, :breakfast, :parking, :tv, :books, :balcony, :yard, :pet_friendly, :hair_dryer,
              :warm_water, :smoke_alarm, :smoking_allowed, :refrigirator, :microwave, :security_camera, :room_number,
              :other, :created_at, :updated_at
json.url room_url(room, format: :json)
