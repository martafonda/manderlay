# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
  	author "Bill Gates"
  	body "Bla, bla, bla...."

  	association :movie
  end
end
