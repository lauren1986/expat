class CategoriesController < ApplicationController

  add_breadcrumb "Forum Home", :posts_path
  add_breadcrumb "Destination", :root_path

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    add_breadcrumb "#{@post.category_id}", :category_path, :style => 'active'
  end
end
