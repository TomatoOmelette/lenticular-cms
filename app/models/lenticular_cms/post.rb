module LenticularCms
  class Post < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged
    mount_uploader :image, ImageUploader
    belongs_to :category
  end
end
