class Inventory < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :quantity

end
