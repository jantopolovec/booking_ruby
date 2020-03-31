class Api::V1::BuildingsController < Api::ApplicationController
  before_action :set_building, only: [:show]
    def index
      buildings = Building.all
      building = buildings.map do |building|
        { id: building.id, ime: building.ime, user_id: building.user_id, opis: building.opis, zvezdice: building.zvezdice }
      end
      
      render json: { results: buildings }.to_json, status: :ok
    end

    def show
      render json: { result: @building }.to_json, status: :ok
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_building
      @building = Building.find(params[:id])
    end
  end