# frozen_string_literal: true

class HomeController < ApplicationController
  layout 'home'
  skip_before_action :authenticate_user!
  def index; end

  def about; end

  def dashboard; end

  def contact
    @contact = Contact.new
  end

  def create_contact
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path, notice: 'Contact was successfully established.'
    else
      render :contact
    end
  end

  def privacy; end

  private

  def contact_params
    params.require(:contact).permit(:full_name, :email, :message)
  end
end
