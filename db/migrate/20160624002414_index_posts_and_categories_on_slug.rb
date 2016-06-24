class IndexPostsAndCategoriesOnSlug < ActiveRecord::Migration[5.0]
  def change
    add_index :lenticular_cms_posts, :slug
    add_index :lenticular_cms_categories, :slug
  end
end
