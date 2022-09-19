# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'rooms/index', type: :view do
  before do
    assign(:rooms, [
             Room.create!(
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
               other: 'Other'
             ),
             Room.create!(
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
               other: 'Other'
             )
           ])
  end

  it 'renders a list of rooms' do
    render
    # assert_select 'tr>td', text: 2.to_s, count: 2
    # assert_select 'tr>td', text: false.to_s, count: 2
    # assert_select 'tr>td', text: false.to_s, count: 2
    # assert_select 'tr>td', text: false.to_s, count: 2
    # assert_select 'tr>td', text: false.to_s, count: 2
    # assert_select 'tr>td', text: false.to_s, count: 2
    # assert_select 'tr>td', text: false.to_s, count: 2
    # assert_select 'tr>td', text: false.to_s, count: 2
    # assert_select 'tr>td', text: false.to_s, count: 2
    # assert_select 'tr>td', text: false.to_s, count: 2
    # assert_select 'tr>td', text: false.to_s, count: 2
    # assert_select 'tr>td', text: false.to_s, count: 2
    # assert_select 'tr>td', text: false.to_s, count: 2
    # assert_select 'tr>td', text: false.to_s, count: 2
    # assert_select 'tr>td', text: false.to_s, count: 2
    # assert_select 'tr>td', text: 3.to_s, count: 2
    # assert_select 'tr>td', text: 'Other'.to_s, count: 2
  end
end
