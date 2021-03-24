FactoryBot.define do
  factory :curriculum do
    name {Faker::Name.name}
    association :menu
  end
end
