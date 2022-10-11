# frozen_string_literal: true

class Room < ApplicationRecord
    belongs_to :apartment
    belongs_to :user, optional: true
end
