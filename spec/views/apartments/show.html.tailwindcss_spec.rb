# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'apartments/show', type: :view do
  before do
    @apartment = assign(:apartment, Apartment.create!(
                                      address: 'Address',
                                      phone: 'Phone',
                                      latitude: 2.5,
                                      longitude: 3.5,
                                      user_id: create(:user).id
                                    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
  end
end
