class UserClick < ActiveRecord::Base
  belongs_to :user

  # Set default scope to show newest first.
  default_scope { order('created_at DESC') }
end
