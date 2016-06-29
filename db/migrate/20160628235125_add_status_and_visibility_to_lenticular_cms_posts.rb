class AddStatusAndVisibilityToLenticularCmsPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :lenticular_cms_posts, :status, :string, index: true, default: 'draft'
    add_column :lenticular_cms_posts, :visibility, :string, default: 'private'
  end
end
