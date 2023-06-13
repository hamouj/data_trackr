FactoryBot.define do
  factory :academic_goal do
    student { nil }
    goal { "MyString" }
    trials { 1 }
    category { 1 }
    frequency { 1 }
  end
end
