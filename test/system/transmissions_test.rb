require "application_system_test_case"

class TransmissionsTest < ApplicationSystemTestCase
  setup do
    @transmission = transmissions(:one)
  end

  test "visiting the index" do
    visit transmissions_url
    assert_selector "h1", text: "Transmissions"
  end

  test "should create transmission" do
    visit transmissions_url
    click_on "New transmission"

    fill_in "Name", with: @transmission.name
    click_on "Create Transmission"

    assert_text "Transmission was successfully created"
    click_on "Back"
  end

  test "should update Transmission" do
    visit transmission_url(@transmission)
    click_on "Edit this transmission", match: :first

    fill_in "Name", with: @transmission.name
    click_on "Update Transmission"

    assert_text "Transmission was successfully updated"
    click_on "Back"
  end

  test "should destroy Transmission" do
    visit transmission_url(@transmission)
    click_on "Destroy this transmission", match: :first

    assert_text "Transmission was successfully destroyed"
  end
end
