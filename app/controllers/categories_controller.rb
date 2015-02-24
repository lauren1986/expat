class CategoriesController < ApplicationController

  add_breadcrumb "Forum Home", :posts_path
  add_breadcrumb "Destination", :root_path

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @posts = @category.posts.order("posts.created_at DESC")
    @categories = @category.posts.paginate(:page => params[:page], :per_page => 8)
    add_breadcrumb "#{@category.category_name}", :category_path, :style => 'active'
  end
end
