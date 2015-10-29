class LocationsController < ApplicationController
  # GET /locations
  # GET /locations.json
  def index
    if user_signed_in?
      if params[:query].present?
        #@locations = Location.search(params[:query], page: params[:page])
        @locations = Location.all
      else
        @locations = []
      end
    else
      redirect_to new_user_session_path
    end

  end

  def create
    @location = Location.new(params)
  end

  #def autocomplete
  #  render json: Trip.search(params[:query], autocomplete: true, limit: 10).map(&:name)
  #end
end
