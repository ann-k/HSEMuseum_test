class Artwork < ApplicationRecord
  mount_uploader :image, ImageUploader
end
