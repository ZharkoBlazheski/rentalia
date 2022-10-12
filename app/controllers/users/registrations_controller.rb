# frozen_string_literal: true

module Users
  class RegistrationsController < Devise::RegistrationsController
    layout 'dashboard', only: [:edit]

    protected

    def update_resource(resource, params)
      resource.update_without_password(params)
    end
  end
end
