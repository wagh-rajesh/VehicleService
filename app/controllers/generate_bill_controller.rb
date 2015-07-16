class GenerateBillController < ApplicationController

  def index
    @vehicles = VehicleDetail.all
    @places = PlaceDetail.all
  end

  def get_bill
    @fare = 20  # Minimun fare to be collected.
    @selected_vehicle = VehicleDetail.find(params[:travel_info][:vehicle_id])
    @selected_place = PlaceDetail.find(params[:travel_info][:place_id])
    @distance = @selected_place.distance.to_f # Total distance to be travelled
    while @distance > 1.5
      @fare += 10
      @distance -= 1.0
    end
  end

end
