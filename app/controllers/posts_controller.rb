class PostsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @post = Post.new
  end
  
  def create
    Post.create(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:image1, :image2, :image3, :point, :result, :appeal).merge(user_id: current_user.id, product_id: params[:product_id])
  end
end
