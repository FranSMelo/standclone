require "application_system_test_case"

class VehicleImagesTest < ApplicationSystemTestCase
  setup do
    @vehicle_image = vehicle_images(:one)
  end

  test "visiting the index" do
    visit vehicle_images_url
    assert_selector "h1", text: "Vehicle images"
  end

  test "should create vehicle image" do
    visit vehicle_images_url
    click_on "New vehicle image"

    fill_in "Image path", with: @vehicle_image.image_path
    fill_in "Position", with: @vehicle_image.position
    check "Primary image" if @vehicle_image.primary_image
    fill_in "Vehicle", with: @vehicle_image.vehicle_id
    click_on "Create Vehicle image"

    assert_text "Vehicle image was successfully created"
    click_on "Back"
  end

  test "should update Vehicle image" do
    visit vehicle_image_url(@vehicle_image)
    click_on "Edit this vehicle image", match: :first

    fill_in "Image path", with: @vehicle_image.image_path
    fill_in "Position", with: @vehicle_image.position
    check "Primary image" if @vehicle_image.primary_image
    fill_in "Vehicle", with: @vehicle_image.vehicle_id
    click_on "Update Vehicle image"

    assert_text "Vehicle image was successfully updated"
    click_on "Back"
  end

  test "should destroy Vehicle image" do
    visit vehicle_image_url(@vehicle_image)
    click_on "Destroy this vehicle image", match: :first

    assert_text "Vehicle image was successfully destroyed"
  end
end
