# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    sandwich_id 1
    quote "MyText"
    message "MyText"
  end
end
