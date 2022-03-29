class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :title
      t.string :zip_code
      t.text :description

      t.timestamps
    end
  end
end
