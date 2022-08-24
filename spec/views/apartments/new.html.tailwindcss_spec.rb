# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'apartments/new', type: :view do
  before do
    assign(:apartment, Apartment.new(
                         address: 'MyString',
                         phone: 'MyString',
                         latitude: 1.5,
                         longitude: 1.5,
                         rooms: 1
                       ))
  end

  it 'renders new apartment form' do
    render

    assert_select 'form[action=?][method=?]', apartments_path, 'post' do
      assert_select 'input[name=?]', 'apartment[address]'

      assert_select 'input[name=?]', 'apartment[phone]'

      assert_select 'input[name=?]', 'apartment[latitude]'

      assert_select 'input[name=?]', 'apartment[longitude]'

      assert_select 'input[name=?]', 'apartment[rooms]'
    end
  end
end
