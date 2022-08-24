# frozen_string_literal: true

json.array! @apartments, partial: 'apartments/apartment', as: :apartment
