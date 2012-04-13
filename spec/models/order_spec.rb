require 'spec_helper'

describe Order do
  describe "email" do
    it "should create an email with the right sandwich type" do
      s1 = Sandwich.new(:kind => "Meaty")
      o1 = Order.new
      o1.sandwich = s1
      email1 = o1.email("example@example.com", false)
      email1.should include "Meaty"
      email1.should_not include "Vegetarian"
    end
  end
end
