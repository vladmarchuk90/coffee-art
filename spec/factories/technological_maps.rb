FactoryBot.define do
  factory :technological_map do
    association :dish
    name { "Cappuccino receipt" }
    description { "Grain coffee seeds and add 200 ml. 98C water. After above milk with a foam." }
  end
end
