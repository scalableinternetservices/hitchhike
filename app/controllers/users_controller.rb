class UsersController < ApplicationController
  before_action :authenticate_user!

  def new
    redirect_to sign_up
  end

  def show
    @user = User.find(params[:id])
    render action: "index"
  end

  def create
    if user_signed_in?
      sign_out(current_user)
    end
    redirect_to new_user_session_path
  end

  def edit
    if user_signed_in?
      redirect_to edit
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
