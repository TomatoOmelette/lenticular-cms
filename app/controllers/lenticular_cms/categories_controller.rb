require_dependency "lenticular_cms/application_controller"

module LenticularCms
  class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit, :update, :destroy]

    # GET /categories
    def index
      @categories = Category.all
    end

    # GET /categories/1
    def show
      @posts = @category.posts
    end

    # GET /categories/new
    def new
      @category = Category.new
      render layout: 'layouts/lenticular_cms/dashboard'
    end

    # GET /categories/1/edit
    def edit
      render layout: 'layouts/lenticular_cms/dashboard'
    end

    # POST /categories
    def create
      @category = Category.new(category_params)

      if @category.save
        redirect_to dashboard_categories_path, notice: 'Category was successfully created.'
      else
        render action: :new, layout: 'layouts/lenticular_cms/dashboard'
      end
    end

    # PATCH/PUT /categories/1
    def update
      if @category.update(category_params)
        redirect_to dashboard_categories_path, notice: 'Category was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /categories/1
    def destroy
      @category.destroy
      redirect_to dashboard_categories_path, notice: 'Category was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_category
        @category = Category.friendly.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def category_params
        params.require(:category).permit(:name, :description, :slug)
      end
  end
end
