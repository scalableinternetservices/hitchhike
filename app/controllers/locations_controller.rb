class LocationsController < ApplicationController
  def create
    @location = Location.new(params)
  end
end
