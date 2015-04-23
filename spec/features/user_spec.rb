require 'rails_helper'

describe 'User' do
  before(:each) do
    @user = FactoryGirl.create(:user)
  end

  describe 'profile', js: true  do
    it 'clicking around user profile should add user clicks' do
      visit edit_user_path(@user)
      expect(page).to have_selector('#user_name')

      click_on('User\'s Profile Tracking')

      expect(page).to have_selector('.user-records-table')
      expect(page).to_not have_selector('.user-click-record')

      visit edit_user_path(@user)
      expect(page).to have_selector('#user_name')
      find('#user_name').click

      click_on('User\'s Profile Tracking')

      expect(page).to have_selector('.user-records-table')
      expect(page).to have_selector('.user-click-record', count: 1)
    end
  end
end