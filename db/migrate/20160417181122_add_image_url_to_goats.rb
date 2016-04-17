class AddImageUrlToGoats < ActiveRecord::Migration[5.0]
  def change
    change_table :goats do |t|
      t.string :image_url
    end
  end
end
