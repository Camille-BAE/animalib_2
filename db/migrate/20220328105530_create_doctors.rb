class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :name_office
      t.string :zip_code
      t.integer :phone
      t.text :description

      t.timestamps
    end
  end
end
