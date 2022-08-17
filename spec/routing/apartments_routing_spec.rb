# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApartmentsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/apartments').to route_to('apartments#index')
    end

    it 'routes to #new' do
      expect(get: '/apartments/new').to route_to('apartments#new')
    end

    it 'routes to #show' do
      expect(get: '/apartments/1').to route_to('apartments#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/apartments/1/edit').to route_to('apartments#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/apartments').to route_to('apartments#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/apartments/1').to route_to('apartments#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/apartments/1').to route_to('apartments#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/apartments/1').to route_to('apartments#destroy', id: '1')
    end
  end
end
