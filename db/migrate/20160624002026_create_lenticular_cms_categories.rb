class CreateLenticularCmsCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :lenticular_cms_categories do |t|
      t.string :name
      t.string :description
      t.string :slug

      t.timestamps
    end
  end
end
