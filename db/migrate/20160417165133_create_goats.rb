class CreateGoats < ActiveRecord::Migration[5.0]
  def change
    create_table :goats do |t|
      t.string :name
      t.integer :charisma
      t.float :latitude
      t.float :longitude
      t.string :color
      t.date :birthdate

      t.timestamps
    end
  end
end
