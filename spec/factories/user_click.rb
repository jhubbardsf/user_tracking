FactoryGirl.define do

  factory :user_click do
    field 'Name'

    # Add association
    user
  end
end