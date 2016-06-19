class CreateLenticularCmsPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :lenticular_cms_posts do |t|
      t.integer :category_id
      t.string :title
      t.string :subheading
      t.text :content
      t.string :author
      t.string :image
      t.string :slug

      t.timestamps
    end
  end
end
