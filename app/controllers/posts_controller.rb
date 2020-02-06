class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user)
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
    else
      render :new
    end
  end

  def search
    @posts = Post.search(params[:keyword])
  end

  private
  def post_params
    params.require(:post).permit(:product_name, :image1, :image2, :image3, :point, :result, :appeal, :confirming, :image1_cache, :image2_cache, :image3_cache).merge(user_id: current_user.id, product_id: params[:product_id])
  end
end
