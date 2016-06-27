class DropCategoryIdFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :lenticular_cms_posts, :category_id
  end
end
