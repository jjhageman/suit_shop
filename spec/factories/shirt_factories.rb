FactoryGirl.define do
  factory :shirt do
    sequence(:name) {|n| "Shirt #{n}" }
    price 79.95
  end
end
