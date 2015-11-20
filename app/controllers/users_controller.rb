class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @photo = @user.photos
  end

  def my_likes
    @likes = current_user.liked_photos
  end

end
