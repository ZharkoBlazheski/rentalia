# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'apartments/edit', type: :view do
  before do
    @apartment = assign(:apartment, Apartment.create!(
                                      city: 'MyString',
                                      address: 'MyString',
                                      phone: 'MyString',
                                      latitude: 1.5,
                                      longitude: 1.5,
                                      user_id: create(:user).id
                                    ))
  end

  it 'renders the edit apartment form' do
    render

    assert_select 'form[action=?][method=?]', apartment_path(@apartment), 'post' do
      assert_select 'input[name=?]', 'apartment[city]'

      assert_select 'input[name=?]', 'apartment[address]'

      assert_select 'input[name=?]', 'apartment[phone]'

      assert_select 'input[name=?]', 'apartment[latitude]'

      assert_select 'input[name=?]', 'apartment[longitude]'
    end
  end
end
