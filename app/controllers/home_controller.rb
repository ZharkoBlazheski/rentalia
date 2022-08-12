class HomeController < ApplicationController
  layout 'home'
  skip_before_action :authenticate_user!
  def index
  end

  def about
  end

  def contact
  end

  def privacy
  end
end
