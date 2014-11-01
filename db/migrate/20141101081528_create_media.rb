#rails generate model Media promoted:bool product:references path:string type:string
class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.belongs_to :product
      t.string :path
      t.string :type

      t.timestamps
    end
    add_index :media, :product_id
  end
end
