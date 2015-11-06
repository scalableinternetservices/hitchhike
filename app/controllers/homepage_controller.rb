class HomepageController < ApplicationController
  # skip_before_filter :authenticate_user!

  def splash
  end

  def explore
    @trips = Trip.order(created_at: :desc)
  end

  def sign_in
  end

  def sign_up
  end
end
