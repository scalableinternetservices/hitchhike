class HomepageController < ApplicationController
  # skip_before_filter :authenticate_user!

  def splash
  end

  # GET /account/:username
  def account
    if user_signed_in?
      @user = User.find_by(username: params[:username])
      @trips = Trip.where("user_id = #{@user.id}")
    else
      redirect_to new_user_session_path
    end
  end

  def sign_in
  end

  def sign_up
  end
end
