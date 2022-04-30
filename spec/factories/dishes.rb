FactoryBot.define do
  factory :dish_cappuccino do
    association :menu
    name { "Cappuccino" }
    description { "Lavazza Espresso and steamed milk, topped with whipped cream and a sprinkle of cinnamon." }
    price { 5.00 }
  end
end
