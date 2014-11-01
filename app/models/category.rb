class Category < ActiveRecord::Base
  belongs_to :category
  has_many :products
  has_many  :categories
  attr_accessible :name, :name_en, :sort
end
