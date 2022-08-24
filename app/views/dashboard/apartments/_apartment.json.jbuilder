# frozen_string_literal: true

json.extract! apartment, :id, :address, :phone, :latitude, :longitude, :rooms, :created_at, :updated_at
json.url apartment_url(apartment, format: :json)
