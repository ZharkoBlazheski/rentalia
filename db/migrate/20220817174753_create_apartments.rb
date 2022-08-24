class CreateApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|
      t.string :address
      t.string :phone
      t.float :latitude
      t.float :longitude
      t.integer :rooms, default: 1

      t.timestamps
    end
  end
end