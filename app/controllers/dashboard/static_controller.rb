# frozen_string_literal: true

module Dashboard
  class StaticController < Dashboard::DashboardController
    def home; end

    def rooms
      @rooms = current_user.rooms
    end
  end
end
