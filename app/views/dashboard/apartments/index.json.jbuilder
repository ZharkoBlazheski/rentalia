# frozen_string_literal: true

json.array! @apartments, partial: 'dashboard/apartments/apartment', as: :apartment
