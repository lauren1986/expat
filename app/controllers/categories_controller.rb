class CategoriesController < ApplicationController

  add_breadcrumb "Forum Home", :posts_path
  add_breadcrumb "Destination", :root_path

  def index
    @categories = Category.all
  end

  def show
    category_id = params[:category_id]
    @category = Category.find(params[:category_id])
    @posts = @category.posts.order("posts.created_at DESC")
    add_breadcrumb "#{@category.category_name}", :category_path, :style => 'active'
  end
end
