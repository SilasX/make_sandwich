class Order < ActiveRecord::Base
  attr_accessible :message, :quote, :sandwich_id
end
