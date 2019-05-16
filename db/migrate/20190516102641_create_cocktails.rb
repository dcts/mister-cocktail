class CreateCocktails < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :image_url
      t.string :instructions
      t.string :category

      t.timestamps
    end
  end
end
