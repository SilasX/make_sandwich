require 'pony'

class Order < ActiveRecord::Base
  attr_accessible :message, :quote, :sandwich_id, :tomato, :lettuce, :mayo, :mustard
  belongs_to :sandwich
  belongs_to :user
  def email recipient, sender = nil # the user ID if it exists
    message = File.open("#{Rails.root}/app/models/form_email.txt").read
    message.gsub!('#sandwich', sandwich.kind)
    quote_array = [
"You are only as wise as your falsest delusion.",
"This statement is true.",
"It's not who you are on the inside; it's what you do that defines you.",
"Blindness is when you see the same thing regardless of what's in front of you; foolishness in when you believe the same thing regardless of what you've seen."]
    message.gsub!('#quote', quote_array.sample)
    topping_list = ""
    array = [:tomato, :lettuce, :mayo, :mustard]
    array.each do |topping|
      if self.send(topping)
        topping_list << topping.to_s + "\n"
      end
    end
    message.gsub!("#toppings", topping_list)
    if sender 
      message.gsub!('#name',sender.name)
    end
  	Pony.mail(:to => recipient, :via => :smtp, 
			:subject              => "Test email",
			:body                 => message,
			:via_options => {
			:address              => 'smtp.gmail.com',
			:port                 => '587',
			:enable_starttls_auto => true,
			:user_name            => 'johngeneral.emailguy@gmail.com',
			:password             => 'mvclover',
			:authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
			:domain               => "localhost.localdomain", # the HELO domain provided by the client to the server
		})
    return message 
  end
end
