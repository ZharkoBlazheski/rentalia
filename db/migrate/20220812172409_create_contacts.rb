class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :email
      t.string :message

      t.timestamps
    end
  end
end
