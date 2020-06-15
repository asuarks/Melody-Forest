class Profile < ApplicationRecord
  mount_uploader :avatar, ProfileAvatarUploader
  belongs_to :user
end
