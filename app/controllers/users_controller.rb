class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    if user_signed_in?
      # @user = User.find_by(username: params[:username])
      @user = User.find(params[:id])
      @trips = Trip.where("user_id = #{@user.id}")
    else
      redirect_to new_user_session_path
    end
  end

  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follow'
  end

end
