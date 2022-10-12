class AddCityToApartment < ActiveRecord::Migration[7.0]
  def change
    add_column :apartments, :city, :string
  end
end
