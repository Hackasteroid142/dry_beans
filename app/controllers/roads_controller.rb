class RoadsController < ApplicationController
  before_action :set_road, only: %i[ show update destroy road_with_details]

  # GET /roads
  def index
    @roads = Road.all

    render json: @roads
  end

  # GET /roads/1
  def show
    render json: @road
  end

  # POST /roads
  def create
    @road = Road.new(road_params)

    if @road.save
      render json: @road, status: :created, location: @road
    else
      render json: @road.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /roads/1
  def update
    if @road.update(road_params)
      render json: @road
    else
      render json: @road.errors, status: :unprocessable_entity
    end
  end

  # DELETE /roads/1
  def destroy
    @road.destroy!
  end

  # GET /roads/:id/details
  def road_with_details
    render json: Road.with_details(@road)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_road
      @road = Road.includes(:trips).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def road_params
      params.require(:road).permit(:company_name, :code)
    end
end
