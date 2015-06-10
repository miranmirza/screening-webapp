FactoryGirl.define do
  factory :user do
    firstname "User"
    lastname "Userlast"
    email "user@example.com"
    provider "Facebook"
  end

  factory :candidate do
    firstname "Candy"
    lastname "Last"
    skype "candidate"
    city "Denver"
  end
end
