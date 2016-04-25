class Pvarient < ActiveRecord::Base
  belongs_to :product
  mount_uploader :image, AvatarUploader
end
