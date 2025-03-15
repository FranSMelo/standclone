require "application_system_test_case"

class VehiclesTest < ApplicationSystemTestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "visiting the index" do
    visit vehicles_url
    assert_selector "h1", text: "Vehicles"
  end

  test "should create vehicle" do
    visit vehicles_url
    click_on "New vehicle"

    fill_in "Brand", with: @vehicle.brand_id
    fill_in "Color", with: @vehicle.color
    fill_in "Condition", with: @vehicle.condition_id
    fill_in "Description", with: @vehicle.description
    fill_in "Doors", with: @vehicle.doors
    fill_in "Engine size", with: @vehicle.engine_size
    fill_in "Fuel type", with: @vehicle.fuel_type_id
    fill_in "Mileage", with: @vehicle.mileage
    fill_in "Model", with: @vehicle.model
    fill_in "Power hp", with: @vehicle.power_hp
    fill_in "Price", with: @vehicle.price
    fill_in "Registration month", with: @vehicle.registration_month
    fill_in "Registration year", with: @vehicle.registration_year
    fill_in "Segment", with: @vehicle.segment_id
    fill_in "Status", with: @vehicle.status
    fill_in "Transmission", with: @vehicle.transmission_id
    fill_in "Vehicle type", with: @vehicle.vehicle_type_id
    click_on "Create Vehicle"

    assert_text "Vehicle was successfully created"
    click_on "Back"
  end

  test "should update Vehicle" do
    visit vehicle_url(@vehicle)
    click_on "Edit this vehicle", match: :first

    fill_in "Brand", with: @vehicle.brand_id
    fill_in "Color", with: @vehicle.color
    fill_in "Condition", with: @vehicle.condition_id
    fill_in "Description", with: @vehicle.description
    fill_in "Doors", with: @vehicle.doors
    fill_in "Engine size", with: @vehicle.engine_size
    fill_in "Fuel type", with: @vehicle.fuel_type_id
    fill_in "Mileage", with: @vehicle.mileage
    fill_in "Model", with: @vehicle.model
    fill_in "Power hp", with: @vehicle.power_hp
    fill_in "Price", with: @vehicle.price
    fill_in "Registration month", with: @vehicle.registration_month
    fill_in "Registration year", with: @vehicle.registration_year
    fill_in "Segment", with: @vehicle.segment_id
    fill_in "Status", with: @vehicle.status
    fill_in "Transmission", with: @vehicle.transmission_id
    fill_in "Vehicle type", with: @vehicle.vehicle_type_id
    click_on "Update Vehicle"

    assert_text "Vehicle was successfully updated"
    click_on "Back"
  end

  test "should destroy Vehicle" do
    visit vehicle_url(@vehicle)
    click_on "Destroy this vehicle", match: :first

    assert_text "Vehicle was successfully destroyed"
  end
end
