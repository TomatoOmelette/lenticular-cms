module LenticularCms
  class CategoryJoinsPost < ApplicationRecord
    belongs_to :category
    belongs_to :post
  end
end
