class Product < ActiveRecord::Base
  belongs_to :category
  has_many :medias
  attr_accessible :description, :display, :model_no, :name, :sort
end
