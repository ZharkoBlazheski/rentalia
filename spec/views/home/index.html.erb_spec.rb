require 'rails_helper'

RSpec.describe "home/index", type: :view do
  it 'renders index page' do
    render
    expect(rendered).to include('Your dream vacation spot')
  end
end
