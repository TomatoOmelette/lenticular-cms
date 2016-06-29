require_dependency "lenticular_cms/application_controller"

module LenticularCms
  class DashboardController < ApplicationController
    layout 'layouts/lenticular_cms/dashboard'
    def show
      @post_count = Post.count
      @recently_published = Post.where('created_at > ?', 90.days.ago).last(5)
    end

    def posts_index
      @posts = Post.all
    end

    def categories_index
      @category = Category.new
      @categories = Category.all
    end
  end
end