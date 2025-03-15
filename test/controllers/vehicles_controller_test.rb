require "test_helper"

class VehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get vehicles_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_url
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference("Vehicle.count") do
      post vehicles_url, params: { vehicle: { brand_id: @vehicle.brand_id, color: @vehicle.color, condition_id: @vehicle.condition_id, description: @vehicle.description, doors: @vehicle.doors, engine_size: @vehicle.engine_size, fuel_type_id: @vehicle.fuel_type_id, mileage: @vehicle.mileage, model: @vehicle.model, power_hp: @vehicle.power_hp, price: @vehicle.price, registration_month: @vehicle.registration_month, registration_year: @vehicle.registration_year, segment_id: @vehicle.segment_id, status: @vehicle.status, transmission_id: @vehicle.transmission_id, vehicle_type_id: @vehicle.vehicle_type_id } }
    end

    assert_redirected_to vehicle_url(Vehicle.last)
  end

  test "should show vehicle" do
    get vehicle_url(@vehicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_url(@vehicle)
    assert_response :success
  end

  test "should update vehicle" do
    patch vehicle_url(@vehicle), params: { vehicle: { brand_id: @vehicle.brand_id, color: @vehicle.color, condition_id: @vehicle.condition_id, description: @vehicle.description, doors: @vehicle.doors, engine_size: @vehicle.engine_size, fuel_type_id: @vehicle.fuel_type_id, mileage: @vehicle.mileage, model: @vehicle.model, power_hp: @vehicle.power_hp, price: @vehicle.price, registration_month: @vehicle.registration_month, registration_year: @vehicle.registration_year, segment_id: @vehicle.segment_id, status: @vehicle.status, transmission_id: @vehicle.transmission_id, vehicle_type_id: @vehicle.vehicle_type_id } }
    assert_redirected_to vehicle_url(@vehicle)
  end

  test "should destroy vehicle" do
    assert_difference("Vehicle.count", -1) do
      delete vehicle_url(@vehicle)
    end

    assert_redirected_to vehicles_url
  end
end
