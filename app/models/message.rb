class Message < ApplicationRecord
  belongs_to :user
  belongs_to :group
  mount_uploader :image, ImageUploader

  validates :comment, presence: true, unless: :image?
end