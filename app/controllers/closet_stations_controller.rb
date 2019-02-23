class ClosetStationsController < ApplicationController
  before_action :set_closet_station, only: [:show, :edit, :update, :destroy]

  # GET /closet_stations
  # GET /closet_stations.json
  def index
    @closet_stations = ClosetStation.all
  end

  # GET /closet_stations/1
  # GET /closet_stations/1.json
  def show
  end

  # GET /closet_stations/new
  def new
    @closet_station = ClosetStation.new
  end

  # GET /closet_stations/1/edit
  def edit
  end

  # POST /closet_stations
  # POST /closet_stations.json
  def create
    @closet_station = ClosetStation.new(closet_station_params)

    respond_to do |format|
      if @closet_station.save
        format.html { redirect_to @closet_station, notice: 'Closet station was successfully created.' }
        format.json { render :show, status: :created, location: @closet_station }
      else
        format.html { render :new }
        format.json { render json: @closet_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /closet_stations/1
  # PATCH/PUT /closet_stations/1.json
  def update
    respond_to do |format|
      if @closet_station.update(closet_station_params)
        format.html { redirect_to @closet_station, notice: 'Closet station was successfully updated.' }
        format.json { render :show, status: :ok, location: @closet_station }
      else
        format.html { render :edit }
        format.json { render json: @closet_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /closet_stations/1
  # DELETE /closet_stations/1.json
  def destroy
    @closet_station.destroy
    respond_to do |format|
      format.html { redirect_to closet_stations_url, notice: 'Closet station was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_closet_station
      @closet_station = ClosetStation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def closet_station_params
      params.fetch(:closet_station, {})
    end
end
