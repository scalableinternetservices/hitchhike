class LocationsController < ApplicationController
  # GET /locations
  # GET /locations.json
  def index
    if params[:query].present?
      @locations = Location.search(params[:query], page: params[:page])
    else
      @locations = []
    end
    #@locations = Location.all
  end

  def create
    @location = Location.new(params)
  end

  def autocomplete
    render json: Trip.search(params[:query], autocomplete: true, limit: 10).map(&:name)
  end
end
