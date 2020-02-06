class PostsController < ApplicationController
  def index
  end

  def show
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

  private
  def post_params
    params.require(:post).permit(:product_name, :image1, :image2, :image3, :point, :result, :appeal, :confirming).merge(user_id: current_user.id, product_id: params[:product_id])
  end
end
