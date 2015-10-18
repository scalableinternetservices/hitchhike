class HomepageController < ApplicationController
  # skip_before_filter :authenticate_user!

  def splash
  end

  def index
    @trips = Trip.all
  end
  def sign_in
  end

  def sign_up
  end
end
