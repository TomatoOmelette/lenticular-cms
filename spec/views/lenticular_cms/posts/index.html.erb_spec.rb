require 'rails_helper'

RSpec.describe "posts/index", :type => :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        :category_id => 1,
        :title => "Title",
        :subheading => "Subheading",
        :content => "MyText",
        :author => "Author",
        :image => "Image",
        :slug => "Slug"
      ),
      Post.create!(
        :category_id => 1,
        :title => "Title",
        :subheading => "Subheading",
        :content => "MyText",
        :author => "Author",
        :image => "Image",
        :slug => "Slug"
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Subheading".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
  end
end
