require 'rails_helper'

describe User do

  # Check associations for user (currently only thing there)
  describe 'associations' do
    it { should have_many :user_clicks }
  end
end
