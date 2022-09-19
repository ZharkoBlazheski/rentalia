# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'dashboard/apartments/edit', type: :view do
  before do
    @apartment = assign(:apartment, Apartment.create!(
                                      address: 'MyString',
                                      phone: 'MyString',
                                      latitude: 1.5,
                                      longitude: 1.5,
                                      rooms: 1,
                                      user_id: create(:user).id
                                    ))
  end

  it 'renders the edit apartment form' do
    render

    assert_select 'form[action=?][method=?]', dashboard_apartment_path(@apartment), 'post' do
      assert_select 'input[name=?]', 'apartment[address]'

      assert_select 'input[name=?]', 'apartment[phone]'

      assert_select 'input[name=?]', 'apartment[latitude]'

      assert_select 'input[name=?]', 'apartment[longitude]'

      assert_select 'input[name=?]', 'apartment[rooms]'
    end
  end
end
