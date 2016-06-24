module LenticularCms
  class Category < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    has_many :posts

  end
end
