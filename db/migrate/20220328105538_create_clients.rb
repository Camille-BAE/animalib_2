class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      create_table :doctors do |t|
        t.string :first_name
        t.string :last_name
        t.string :zip_code
        t.integer :phone

      t.timestamps
    end
  end
end
