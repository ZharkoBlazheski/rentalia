# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'apartments/index', type: :view do
  include Warden::Test::Helpers

  subject(:user) do
    create(:user)
  end

  before do
    login_as user

    assign(:apartments, [
             Apartment.create!(
               address: 'Address',
               phone: 'Phone',
               latitude: 1.5,
               longitude: 2.5,
               rooms: 3
             ),
             Apartment.create!(
               address: 'Address',
               phone: 'Phone',
               latitude: 3.5,
               longitude: 4.5,
               rooms: 5
             )
           ])
  end

  # it "renders a list of apartments" do
  #   render
  #   byebug
  #   assert_select "strong", text: "Address".to_s, count: 2
  #   assert_select "strong", text: "Phone".to_s, count: 2
  #   assert_select "strong", text: 2.5.to_s, count: 2
  #   assert_select "strong", text: 3.5.to_s, count: 2
  #   assert_select "strong", text: 4.to_s, count: 2
  # end
end
