require "application_system_test_case"

class SubPlacesTest < ApplicationSystemTestCase
  setup do
    @sub_place = sub_places(:one)
  end

  test "visiting the index" do
    visit sub_places_url
    assert_selector "h1", text: "Sub places"
  end

  test "should create sub place" do
    visit sub_places_url
    click_on "New sub place"

    fill_in "Place", with: @sub_place.place_id
    click_on "Create Sub place"

    assert_text "Sub place was successfully created"
    click_on "Back"
  end

  test "should update Sub place" do
    visit sub_place_url(@sub_place)
    click_on "Edit this sub place", match: :first

    fill_in "Place", with: @sub_place.place_id
    click_on "Update Sub place"

    assert_text "Sub place was successfully updated"
    click_on "Back"
  end

  test "should destroy Sub place" do
    visit sub_place_url(@sub_place)
    click_on "Destroy this sub place", match: :first

    assert_text "Sub place was successfully destroyed"
  end
end
