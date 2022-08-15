# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'home/contact', type: :view do
  before do
    @contact = Contact.new
  end

  it 'renders the contact page' do
    render
    expect(rendered).to include('For any issue or question please fill out the contact form')
  end
end
