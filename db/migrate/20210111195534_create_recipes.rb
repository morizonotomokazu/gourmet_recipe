class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :recipe_name , null: false
      t.text :recipe_text , null: false
      t.text :material , null: false
      t.references  :user , foreign_key: true
      t.integer :category_id , null: false
      t.timestamps
    end
  end
end
