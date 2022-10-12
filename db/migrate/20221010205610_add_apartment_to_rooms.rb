class AddApartmentToRooms < ActiveRecord::Migration[7.0]
  def change
    add_reference :rooms, :apartment, null: false, foreign_key: true
  end
end
