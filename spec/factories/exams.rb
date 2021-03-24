FactoryBot.define do
  factory :exam do
    question      {Faker::Lorem.sentence}
    question_code {Faker::Lorem.sentence}
    answer_code   {Faker::Lorem.sentence}
    explanation   {Faker::Lorem.sentence}

    association :curriculum
  end
end
