FactoryBot.define do
  factory :stock do
    :product
    quantity { '9.99'.to_d }
  end
end
