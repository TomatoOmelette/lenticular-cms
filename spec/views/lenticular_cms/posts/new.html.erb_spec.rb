require 'rails_helper'

RSpec.describe "posts/new", :type => :view do
  before(:each) do
    assign(:post, Post.new(
      :category_id => 1,
      :title => "MyString",
      :subheading => "MyString",
      :content => "MyText",
      :author => "MyString",
      :image => "MyString",
      :slug => "MyString"
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input#post_category_id[name=?]", "post[category_id]"

      assert_select "input#post_title[name=?]", "post[title]"

      assert_select "input#post_subheading[name=?]", "post[subheading]"

      assert_select "textarea#post_content[name=?]", "post[content]"

      assert_select "input#post_author[name=?]", "post[author]"

      assert_select "input#post_image[name=?]", "post[image]"

      assert_select "input#post_slug[name=?]", "post[slug]"
    end
  end
end
