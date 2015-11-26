class HomepageController < ApplicationController
  # skip_before_filter :authenticate_user!

  before_filter :authenticate_user!
  caches_action :explore
  caches_action :splash

  def splash
  end

  def explore
    @trips = Trip.order(created_at: :desc).limit(6)
  end

  def sign_in
  end

  def sign_up
  end

end
