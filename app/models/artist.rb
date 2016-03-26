class Artist < ActiveRecord::Base
  has_many :song, dependent: :nullify
  accepts_nested_attributes_for :song
  mount_uploader :image, ImageUploader
end
