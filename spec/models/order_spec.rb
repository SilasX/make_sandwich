require 'spec_helper'

describe Order do
	before :each do
		@s1 = Sandwich.new(:kind => "Vegan")
    @o1 = Order.new
    @o1.sandwich = @s1
    @o1.lettuce = true;
    @u1 = User.new(:name => "Donkey",:email => "donkey@donkey.com", :password => "ilikehay")
    @email1 = @o1.email("example@example.com", @u1)
	end
	
  describe "email" do
    it "should create an email with the right sandwich type" do
      @email1.should include "Vegan"
      @email1.should_not include "Meaty"
    end
    it "should create an email with preferences listed" do
    	@email1.should include "lettuce"
    end
  end
  
  describe "associations" do
  	it "should associate the user with an order if a user is given" do
  		@o1.user.name.should == "Donkey"
  	end
  end
end
