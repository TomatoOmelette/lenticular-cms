class CreateLenticularCmsCategoryJoinsPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :lenticular_cms_category_joins_posts do |t|
      t.belongs_to  :lenticular_cms_category, index: true
      t.belongs_to :lenticular_cms_post, index: true
      t.timestamps
    end
  end
end
