class CreateAlienRaces < ActiveRecord::Migration[5.1]
  def change
    create_table :alien_races do |t|
      t.string :name
      t.string :biome
      t.string :demeanor
      t.text :description

      t.timestamps
    end
  end
end
