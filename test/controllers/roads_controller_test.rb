require "test_helper"

class RoadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @road = roads(:one)
  end

  test "should get index" do
    get roads_url, as: :json
    assert_response :success
  end

  test "should create road" do
    assert_difference("Road.count") do
      post roads_url, params: { road: { code: @road.code, company_name: @road.company_name } }, as: :json
    end

    assert_response :created
  end

  test "should show road" do
    get road_url(@road), as: :json
    assert_response :success
  end

  test "should update road" do
    patch road_url(@road), params: { road: { code: @road.code, company_name: @road.company_name } }, as: :json
    assert_response :success
  end

  test "should destroy road" do
    assert_difference("Road.count", -1) do
      delete road_url(@road), as: :json
    end

    assert_response :no_content
  end
end
