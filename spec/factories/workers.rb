FactoryBot.define do
  factory :worker do
    name {Faker::Name.name }
    age {45}
  end
end
