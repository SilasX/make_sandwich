class Sandwich < ActiveRecord::Base
  attr_accessible :kind
  has_many :orders
end
