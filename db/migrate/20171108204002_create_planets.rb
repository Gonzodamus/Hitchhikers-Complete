class CreatePlanets < ActiveRecord::Migration[5.1]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :climate
      t.integer :size
      t.text :description

      t.timestamps
    end
  end
end
