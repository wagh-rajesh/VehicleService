require 'test_helper'

class GenerateBillControllerTest < ActionController::TestCase

  fixtures :place_details, :vehicle_details

  test "should get index" do
    @vehicles = vehicle_details(:one)
    @places = place_details(:one)

    get :index
    assert_response :success
    assert_not_nil @places
    assert_not_nil @vehicles
  end

  test "should get get_bill" do
    get :get_bill

    @selected_place = place_details(:two)
    @selected_vehicle = vehicle_details(:three)
    assert_response :success

  end

end
