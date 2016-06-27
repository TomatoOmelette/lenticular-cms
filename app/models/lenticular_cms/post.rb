module LenticularCms
  class Post < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged
    mount_uploader :image, ImageUploader
    has_many :category_joins_posts
    has_many :categories, through: :category_joins_posts
  end
end
