# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :inventory do
    name "Goose"
    description "Wings"
    quantity 12
  end
end
