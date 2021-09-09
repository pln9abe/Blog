FactoryBot.define do
  factory :blog do
    title { Faker::Book.title }
    body { Faker::Lorem.paragraphs }
    user
  end
end
