require 'rails_helper'

describe UserClick do

  # Check associations for user (currently only thing there)
  describe 'associations' do
    it { is_expected.to belong_to :user }
  end

  # Test default scope
  describe 'default scope' do
    # First click
    let!(:click_one) { FactoryGirl.create(:user_click) }
    # Second click
    let!(:click_two) { FactoryGirl.create(:user_click) }


    # Expect second click to be returned first
    it 'orders by created_at time descending' do
      expect(UserClick.all).to eq [click_two, click_one]
    end
  end
end
