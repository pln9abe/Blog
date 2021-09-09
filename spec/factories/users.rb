FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { "password" }
    password_confirmation { "password" }
    admin { false }

    trait :admin do
      admin { true }
    end
  end
end
