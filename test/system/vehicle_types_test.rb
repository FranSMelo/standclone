require "application_system_test_case"

class VehicleTypesTest < ApplicationSystemTestCase
  setup do
    @vehicle_type = vehicle_types(:one)
  end

  test "visiting the index" do
    visit vehicle_types_url
    assert_selector "h1", text: "Vehicle types"
  end

  test "should create vehicle type" do
    visit vehicle_types_url
    click_on "New vehicle type"

    fill_in "Name", with: @vehicle_type.name
    click_on "Create Vehicle type"

    assert_text "Vehicle type was successfully created"
    click_on "Back"
  end

  test "should update Vehicle type" do
    visit vehicle_type_url(@vehicle_type)
    click_on "Edit this vehicle type", match: :first

    fill_in "Name", with: @vehicle_type.name
    click_on "Update Vehicle type"

    assert_text "Vehicle type was successfully updated"
    click_on "Back"
  end

  test "should destroy Vehicle type" do
    visit vehicle_type_url(@vehicle_type)
    click_on "Destroy this vehicle type", match: :first

    assert_text "Vehicle type was successfully destroyed"
  end
end
