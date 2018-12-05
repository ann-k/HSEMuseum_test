class Artist < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
end
