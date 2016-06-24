FactoryGirl.define do
  factory :lenticular_cms_post, class: 'LenticularCms::Post' do
    category_id 1
    title "Test post"
    subheading "Hello World!"
    content "Welcome to test post"
    author "Jimmy"
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'public', 'test-image.jpg')) }
  end
end
