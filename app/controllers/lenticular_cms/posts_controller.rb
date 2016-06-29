require_dependency "lenticular_cms/application_controller"

module LenticularCms
  class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    before_action :set_status, only: [:create, :update]

    # GET /posts
    def index
      @posts = Post.all
    end

    # GET /posts/1
    def show
    end

    # GET /posts/new
    def new
      @post = Post.new
      render layout: 'layouts/lenticular_cms/dashboard'
    end

    # GET /posts/1/edit
    def edit
      render layout: 'layouts/lenticular_cms/dashboard'
    end

    # POST /posts
    def create
      @post = Post.new(post_params)

      if @post.save
        redirect_to @post, notice: 'Post was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /posts/1
    def update
      if @post.update(post_params)
        redirect_to @post, notice: 'Post was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /posts/1
    def destroy
      @post.destroy
      redirect_to posts_url, notice: 'Post was successfully destroyed.'
    end

    private
      def set_status
        params[:post][:status] = available_status
      end

      def available_status
        { 'Publish' => 'published',
          'Draft' => 'draft',
          'OK' => post_params[:status] }[params[:commit]] || 'draft'
      end

      def set_post
        @post = Post.friendly.find(params[:id])
      end

      def post_params
        params.require(:post).permit(:title, :subheading, :content, :author, :image, :slug, :status, category_ids: [])
      end
  end
end
