require 'test_helper'

class ClosetStationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @closet_station = closet_stations(:one)
  end

  test "should get index" do
    get closet_stations_url
    assert_response :success
  end

  test "should get new" do
    get new_closet_station_url
    assert_response :success
  end

  test "should create closet_station" do
    assert_difference('ClosetStation.count') do
      post closet_stations_url, params: { closet_station: {  } }
    end

    assert_redirected_to closet_station_url(ClosetStation.last)
  end

  test "should show closet_station" do
    get closet_station_url(@closet_station)
    assert_response :success
  end

  test "should get edit" do
    get edit_closet_station_url(@closet_station)
    assert_response :success
  end

  test "should update closet_station" do
    patch closet_station_url(@closet_station), params: { closet_station: {  } }
    assert_redirected_to closet_station_url(@closet_station)
  end

  test "should destroy closet_station" do
    assert_difference('ClosetStation.count', -1) do
      delete closet_station_url(@closet_station)
    end

    assert_redirected_to closet_stations_url
  end
end
