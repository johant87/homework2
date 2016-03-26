class Artist < ActiveRecord::Base
  has_many :songs, dependent: :nullify
  accepts_nested_attributes_for :songs
  mount_uploader :image, ImageUploader
end
