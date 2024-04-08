class TripsController < ApplicationController
  before_action :set_trip, only: %i[ show update destroy create_delivery ]

  # GET /trips
  def index
    @trips = Trip.all

    render json: @trips
  end

  # GET /trips/1
  def show
    render json: @trip
  end

  # POST /trips
  def create
    @trip = Trip.new(trip_params)

    if @trip.save
      render json: @trip, status: :created, location: @trip
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trips/1
  def update
    if @trip.update(trip_params)
      render json: @trip
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trips/1
  def destroy
    @trip.destroy!
  end

  def create_delivery
    @delivery = @trip.deliveries.new(delivery_params)

    if @delivery.save
      render json: @delivery, status: :created, location: @delivery
    else
      render json: @delivery.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trip_params
      params.require(:trip).permit(:driver_name, :license_plate, :road_id, :direction, :status, :code, :description, :product_name, :delivered_at)
    end

    def delivery_params
      params.require(:delivery).permit(:direction, :status, :code, :description, :product_name, :delivered_at)
    end
end
