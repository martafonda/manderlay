# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cast do
    association :movie
    association :person
    role "MyString"
  end
end
