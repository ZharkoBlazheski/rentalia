# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'dashboard/apartments/new', type: :view do
  before do
    assign(:apartment, Apartment.new(
                         address: 'MyString',
                         phone: 'MyString',
                         latitude: 1.5,
                         longitude: 1.5
                       ))
  end

  it 'renders new apartment form' do
    render

    assert_select 'form[action=?][method=?]', dashboard_apartments_path, 'post' do
      assert_select 'input[name=?]', 'apartment[address]'

      assert_select 'input[name=?]', 'apartment[phone]'

      assert_select 'input[name=?]', 'apartment[latitude]'

      assert_select 'input[name=?]', 'apartment[longitude]'
    end
  end
end
