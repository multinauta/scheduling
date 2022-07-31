require "test_helper"

class SubPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_place = sub_places(:one)
  end

  test "should get index" do
    get sub_places_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_place_url
    assert_response :success
  end

  test "should create sub_place" do
    assert_difference("SubPlace.count") do
      post sub_places_url, params: { sub_place: { place_id: @sub_place.place_id } }
    end

    assert_redirected_to sub_place_url(SubPlace.last)
  end

  test "should show sub_place" do
    get sub_place_url(@sub_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_place_url(@sub_place)
    assert_response :success
  end

  test "should update sub_place" do
    patch sub_place_url(@sub_place), params: { sub_place: { place_id: @sub_place.place_id } }
    assert_redirected_to sub_place_url(@sub_place)
  end

  test "should destroy sub_place" do
    assert_difference("SubPlace.count", -1) do
      delete sub_place_url(@sub_place)
    end

    assert_redirected_to sub_places_url
  end
end
