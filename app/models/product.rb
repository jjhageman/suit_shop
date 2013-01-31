class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price

  validates :price, :presence => true, :numericality => true
end
