class UsersController < ApplicationController
  def show
    @posts = current_user.posts
    @user = current_user
  end
end
