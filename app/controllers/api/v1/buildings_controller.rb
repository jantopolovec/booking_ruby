class Api::V1::BuildingsController < Api::ApplicationController
    def index
      buildings = Building.all
      building = buildings.map do |building|
        { id: building.id, ime: building.ime, user_id: building.user_id, opis: building.opis, zvezdice: building.zvezdice }
      end
      
      render json: { results: buildings }.to_json, status: :ok
    end
  end