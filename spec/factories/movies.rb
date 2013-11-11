# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :movie do
    title "MyString"
    duration 1
    synopsis "A long long ..."
    year 1999
  end
end
