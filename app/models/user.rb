class User < ActiveRecord::Base
  has_many :user_clicks
end
