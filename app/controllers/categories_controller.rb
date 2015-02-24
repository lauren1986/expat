class CategoriesController < ApplicationController

  add_breadcrumb "Forum Home", :posts_path
  add_breadcrumb "Destination", :root_path

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @posts = @category.posts.order("created_at DESC")
    add_breadcrumb "#{@category.category_name}", :category_path, :style => 'active'
  end
end
