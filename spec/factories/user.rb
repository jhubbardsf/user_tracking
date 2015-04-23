FactoryGirl.define do

  factory :user do
    name 'Test User'
    city 'San Francisco'
    state 'California'
    zipcode '94115'

    sequence :email do |n|
      "testemail#{n}@usertrackingdemo.local"
    end
  end
end