# frozen_string_literal: true

class Apartment < ApplicationRecord
  belongs_to :user
  has_many :rooms, dependent: :destroy
end
