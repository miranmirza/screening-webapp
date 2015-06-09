FactoryGirl.define do
  factory :user do
    firstname "User"
    lastname "Userlast"
    email "user@example.com"
    provider "Facebook"
  end
end
