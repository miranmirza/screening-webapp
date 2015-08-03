FactoryGirl.define do
  factory :user do
    firstname "Joe"
    lastname "Remy"
    email "joer@example.com"
    provider "Google"
  end

  factory :candidate do
    firstname "Candy"
    lastname "Last"
    skype "candidate"
    city "Denver"
  end
end
