class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cookery
      t.string :kind_meal
      t.string :preference
      t.integer :serve
      t.string :difficulty
      t.text :ingredients
      t.text :step_by_step

      t.timestamps null: false
    end
  end
end
