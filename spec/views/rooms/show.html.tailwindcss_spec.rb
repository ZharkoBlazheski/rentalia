# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'rooms/show', type: :view do
  before do
    apartment = create(:apartment)
    @room = assign(:room, Room.create!(
                            bed_capacity: 2,
                            breakfast: false,
                            parking: false,
                            tv: false,
                            books: false,
                            balcony: false,
                            yard: false,
                            pet_friendly: false,
                            hair_dryer: false,
                            warm_water: false,
                            smoke_alarm: false,
                            smoking_allowed: false,
                            refrigirator: false,
                            microwave: false,
                            security_camera: false,
                            room_number: 3,
                            apartment_id: apartment.id,
                            other: 'Other'
                          ))
  end

  it 'renders attributes in <p>' do
    render
    # expect(rendered).to match(/2/)
    # expect(rendered).to match(/false/)
    # expect(rendered).to match(/3/)
    # expect(rendered).to match(/Other/)
  end
end
