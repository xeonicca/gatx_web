#rails generate model Product name:string model_no:string category:references description:text images:reference sort:integer display:boolean
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :model_no
      t.belongs_to :category
      t.text :description
      t.references :images
      t.integer :sort
      t.boolean :display
      t.boolean :promoted

      t.timestamps
    end
    add_index :products, :category_id
  end
end
