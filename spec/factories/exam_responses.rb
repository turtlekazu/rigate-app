FactoryBot.define do
  factory :exam_response do
    user_answer_code {Faker::Lorem.sentence}
    score {Faker::Number.between(from: 0, to: 10)}

    association :user
    association :curriculum
  end
end
