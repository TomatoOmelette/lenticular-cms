require_dependency "lenticular_cms/application_controller"

module LenticularCms
  class DashboardController < ApplicationController

    def show
      @post_count = Post.count
      @recently_published = Post.where('created_at > ?', 90.days.ago).last(5)
    end
  end
end