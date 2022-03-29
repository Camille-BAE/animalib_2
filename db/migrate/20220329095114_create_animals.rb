class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :species
      t.string :breed
      t.string :gender
      t.date :birth

      t.timestamps
    end
  end
end
