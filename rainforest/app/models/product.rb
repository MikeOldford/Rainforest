class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price_in_cents

  validates :description, :name, :price_in_cents, :presence => true
  validates_numericality_of :price_in_cents, :greater_than => 0
end
