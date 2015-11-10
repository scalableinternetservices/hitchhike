class LocationsController < ApplicationController
  # GET /locations
  # GET /locations.json
  def index
    if user_signed_in?
      if params[:query].present?
        @locations = Location.search(params[:query])
        @trips = Trip.all
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

  def _nearby
    if params.permit(:lat, :lng) && params[:lat] != nil && params[:lng] != nil
      @cmp = []
      Location.find_each(:batch_size => 5000) do |location|
        d = GeoDistance::Haversine.geo_distance(location.lat.to_s.to_f, location.lng.to_s.to_f, params[:lat].to_s.to_f, params[:lng].to_s.to_f ).to_meters
        @cmp.push([location.trip_id, d])
      end
      @cmp = @cmp.sort! {|a,b| a[1] <=> b[1]}
      @trips = []
      @cmp.each { |trip|
        if @trips.length < 12 && !@trips.include?(Trip.find_by_id(trip[0]))
          @trips.push(Trip.find_by_id(trip[0]))
        end
      }
    else
      @trips = [];
    end
  end

  def distance(loc1, loc2)
    rad_per_deg = Math::PI/180  # PI / 180
    rkm = 6371                  # Earth radius in kilometers
    rm = rkm * 1000             # Radius in meters

    dlat_rad = (loc2[0] - loc1[0]) * rad_per_deg  # Delta, converted to rad
    dlon_rad = (loc2[1] - loc1[1]) * rad_per_deg

    lat1_rad, lon1_rad = loc1.map {|i| i * rad_per_deg }
    lat2_rad, lon2_rad = loc2.map {|i| i * rad_per_deg }

    a = Math.sin(dlat_rad/2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon_rad/2)**2
    c = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a))

    rkm * c # Delta in meters
  end

  #def autocomplete
  #  render json: Trip.search(params[:query], autocomplete: true, limit: 10).map(&:name)
  #end
end
