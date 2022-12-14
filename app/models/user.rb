# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :apartments, dependent: :destroy
  has_many :rooms, through: :apartments
  validates :first_name, :last_name, :phone, :address, presence: true
end
