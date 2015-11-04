class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  # GET /trips
  # GET /trips.json
  def index
    # @trips = Trip.all
    if user_signed_in?
      @user = current_user
      @trips = Trip.where("user_id = #{@user.id}")
    else
      redirect_to new_user_session_path
    end
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
    if user_signed_in?
      @trip = Trip.find(params[:id])
      @owner = User.find(@trip.user_id)
      @locations = Location.where("trip_id = #{@trip.id}")

      $recommender.user_trip_recommends.add_set(current_user.id, theirTrips)
      $recommender.process!
      @recommendations = $recommender.for(params[:id])
      @rating = Rating.where(trip_id: @trip.id).first
      unless @rating
        @rating = Rating.create(trip_id: @trip.id, score: 0)
      end
    else
      redirect_to new_user_session_path
    end
  end

  # GET /trips/new
  def new
    if user_signed_in?
      @trip = Trip.new
    else
      redirect_to new_user_session_path
    end
  end

  # GET /trips/1/edit
  def edit
    if user_signed_in?
      @trip = Trip.find(params[:id])
      @owner = User.find(@trip.user_id)
      if current_user.username != @owner.username
        redirect_to "/trips"
      end
    else
      redirect_to new_user_session_path
    end
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)
    @trip.save
    params.require(:trip)
    jsonloc = JSON.parse(params[:trip][:locations])
    jsonloc.each do |location|
      @trip.locations.create!(location)
    end

    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render :show, status: :created, location: @trip }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'Trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  #def autocomplete
  #  render json: Trip.search(params[:query], autocomplete: false, limit: 10).map(&:title)
  #end

  def self.search(query)
      where("title LIKE ?", "%#{query}%")
  end

  def typeahead
    render json: Model.where('title ilike ?', "%#{params[:query]}%")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:title, :description, :tags, :postdate)
          .merge(:user => current_user, user_id: current_user.id)
    end

    def location_param
      JSON.parse(params.permit![:locations])
    end
end
