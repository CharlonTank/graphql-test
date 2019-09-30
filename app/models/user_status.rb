class UserStatus < ApplicationRecord
  enum(user_status_type: [:sleeping, :eating])
  belongs_to :user
end
