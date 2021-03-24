FactoryBot.define do
  factory :menu do
    name  {Faker::Name.name}
    pasta_name {Faker::Name.name}

    after(:build) do |menu|
      menu.image.attach(io: File.open('public/images/Farfalle.png'), filename: 'img')
    end
  end
end
