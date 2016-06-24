require 'rails_helper'

module LenticularCms
  RSpec.describe Post, :type => :model do
    it "creates slug from post title" do
      post = create(:lenticular_cms_post)
      expect(post.slug).to eql("#{post.title.downcase.split(' ').join('-')}")
    end
  end
end
