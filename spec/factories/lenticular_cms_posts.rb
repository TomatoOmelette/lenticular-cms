FactoryGirl.define do
  factory :lenticular_cms_post, class: 'LenticularCms::Post' do
    category_id 1
    title "MyString"
    subheading "MyString"
    content "MyText"
    author "MyString"
    image "MyString"
    slug "MyString"
  end
end
