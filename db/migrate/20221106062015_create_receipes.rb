class CreateReceipes < ActiveRecord::Migration[6.1]
  def change
    create_table :receipes do |t|
      t.string :meal_name
      t.string :image_url
      t.string :ingredients
      t.string :instructions
      t.string :origin
      t.string :category
      t.string :video
    end
  end
end
