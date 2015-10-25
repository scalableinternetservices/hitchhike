class HomepageController < ApplicationController
  # skip_before_filter :authenticate_user!

  def splash
  end

  # GET /account/:username
  def account
    @user = User.find_by(username: params[:username])
    @trips = Trip.where("user_id = #{@user.id}")
  end

  def sign_in
  end

  def sign_up
  end
end
