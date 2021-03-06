class PostsController < ApplicationController

  before_action :find_post, only: [:show, :edit, :update, :destroy]

  add_breadcrumb "Forum Home", :posts_path
  add_breadcrumb "Destination", :root_path

  def index
    @posts = Post.all
    @posts = Post.order('created_at DESC').paginate(:page => params[:page], :per_page => 8)
    add_breadcrumb "index", root_path
  end

  def show
    @post = Post.find(params[:id])
    add_breadcrumb "#{@post.category.category_name}", :post_path
    add_breadcrumb "#{@post.post_title}", :post_path, :style => 'active'
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
    add_breadcrumb "#{@post.post_title}", :post_path
    add_breadcrumb "Edit", :post_path, :style => 'active'
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private
    def find_post
      @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:post_title, :content, :category_id)
    end
end
