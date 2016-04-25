class Product < ActiveRecord::Base
  belongs_to :user
  has_many :pvarients, dependent: :destroy

  mount_uploader :image, AvatarUploader
  validates :name, presence:true, length: {minimum: 1}
  validates :price, presence:true, :numericality => {:only_float => true}
  resourcify
end
