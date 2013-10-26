# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username "chuk_norris"
    first_name "chucks"

    factory :invalid_user do |variable|
      username nil
      first_name nil
    end
  end
end
