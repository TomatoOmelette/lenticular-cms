module LenticularCms
  class Category < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    has_many :category_joins_posts
    has_many :posts, through: :category_joins_posts
  end
end
