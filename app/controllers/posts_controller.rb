class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  add_breadcrumb "Forum Home", :root_path
  add_breadcrumb "Destination", :root_path
  add_breadcrumb "Category", :root_path
  add_breadcrumb "Post Title", :post_path

  def index
    @posts = Post.all.order("created_at DESC")
    add_breadcrumb "index", root_path
  end

  def show
  end

  def new
    @post = current_user.posts.build
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
        params.require(:post).permit(:post_title, :content)
    end
end
