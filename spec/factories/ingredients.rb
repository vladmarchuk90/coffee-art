FactoryBot.define do
  factory :ingredient_coffe do
    association :technological_map
    association :product_coffee
    quantity { 15.5 }
  end

  factory :ingredient_milk do
    association :technological_map
    association :product_milk
    quantity { 200 }
  end
end
