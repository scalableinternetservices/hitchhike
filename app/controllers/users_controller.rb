class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    if user_signed_in?
      @user = User.find_by(username: params[:username])
      @trips = Trip.where("user_id = #{@user.id}")
    else
      redirect_to new_user_session_path
    end
  rescue NoMethodError
    redirect_to root_url
  end

  def follow
    if user_signed_in?
      @user = User.find_by(username: params[:username])
      @followings = @user.following
      @followers = @user.followers
      render 'show_follow'
    else
      redirect_to new_user_session_path
    end
  end

end
