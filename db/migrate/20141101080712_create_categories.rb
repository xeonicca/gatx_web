#rails generate model Category name:string name_en:string sort:integer category:references
class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :name_en
      t.integer :sort
      t.belongs_to :category

      t.timestamps
    end
    add_index :categories, :category_id
  end
end
