class Media < ActiveRecord::Base
  belongs_to :product
  attr_accessible :path, :promoted, :type
end
