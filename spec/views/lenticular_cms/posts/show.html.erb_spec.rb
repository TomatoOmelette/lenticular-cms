require 'rails_helper'

RSpec.describe "posts/show", :type => :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :category_id => 1,
      :title => "Title",
      :subheading => "Subheading",
      :content => "MyText",
      :author => "Author",
      :image => "Image",
      :slug => "Slug"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Subheading/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Slug/)
  end
end
