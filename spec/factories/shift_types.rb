FactoryBot.define do
  factory :shift_type do
    type_name  {"start_day"}
    form_to { "0-8" }
  end
end
