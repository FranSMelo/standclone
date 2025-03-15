require "test_helper"

class VehicleImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_image = vehicle_images(:one)
  end

  test "should get index" do
    get vehicle_images_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_image_url
    assert_response :success
  end

  test "should create vehicle_image" do
    assert_difference("VehicleImage.count") do
      post vehicle_images_url, params: { vehicle_image: { image_path: @vehicle_image.image_path, position: @vehicle_image.position, primary_image: @vehicle_image.primary_image, vehicle_id: @vehicle_image.vehicle_id } }
    end

    assert_redirected_to vehicle_image_url(VehicleImage.last)
  end

  test "should show vehicle_image" do
    get vehicle_image_url(@vehicle_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_image_url(@vehicle_image)
    assert_response :success
  end

  test "should update vehicle_image" do
    patch vehicle_image_url(@vehicle_image), params: { vehicle_image: { image_path: @vehicle_image.image_path, position: @vehicle_image.position, primary_image: @vehicle_image.primary_image, vehicle_id: @vehicle_image.vehicle_id } }
    assert_redirected_to vehicle_image_url(@vehicle_image)
  end

  test "should destroy vehicle_image" do
    assert_difference("VehicleImage.count", -1) do
      delete vehicle_image_url(@vehicle_image)
    end

    assert_redirected_to vehicle_images_url
  end
end
