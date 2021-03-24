FactoryBot.define do
  factory :content do
    title {Faker::Lorem.sentence}
    text  {Faker::Lorem.sentence}

    association :curriculum
  end
end
