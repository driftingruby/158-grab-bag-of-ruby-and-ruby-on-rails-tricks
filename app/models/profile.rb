class Profile < ApplicationRecord
  belongs_to :user
  # Profile.first.user.first_name
  # Profile.first.first_name
  delegate :first_name, to: :user
end
