class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.integer :bed_capacity
      t.boolean :breakfast, default: false
      t.boolean :parking, default: false
      t.boolean :tv, default: false
      t.boolean :books, default: false
      t.boolean :balcony, default: false
      t.boolean :yard, default: false
      t.boolean :pet_friendly, default: false
      t.boolean :hair_dryer, default: false
      t.boolean :warm_water, default: false
      t.boolean :smoke_alarm, default: false
      t.boolean :smoking_allowed, default: false
      t.boolean :refrigirator, default: false
      t.boolean :microwave, default: false
      t.boolean :security_camera, default: false
      t.integer :room_number
      t.string :other

      t.timestamps
    end
  end
end
