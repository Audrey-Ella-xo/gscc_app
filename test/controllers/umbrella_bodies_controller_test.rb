require 'test_helper'

class UmbrellaBodiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @umbrella_body = umbrella_bodies(:one)
  end

  test "should get index" do
    get umbrella_bodies_url
    assert_response :success
  end

  test "should get new" do
    get new_umbrella_body_url
    assert_response :success
  end

  test "should create umbrella_body" do
    assert_difference('UmbrellaBody.count') do
      post umbrella_bodies_url, params: { umbrella_body: { aim: @umbrella_body.aim, executives: @umbrella_body.executives, img: @umbrella_body.img, meeting_day: @umbrella_body.meeting_day, parton_saint: @umbrella_body.parton_saint } }
    end

    assert_redirected_to umbrella_body_url(UmbrellaBody.last)
  end

  test "should show umbrella_body" do
    get umbrella_body_url(@umbrella_body)
    assert_response :success
  end

  test "should get edit" do
    get edit_umbrella_body_url(@umbrella_body)
    assert_response :success
  end

  test "should update umbrella_body" do
    patch umbrella_body_url(@umbrella_body), params: { umbrella_body: { aim: @umbrella_body.aim, executives: @umbrella_body.executives, img: @umbrella_body.img, meeting_day: @umbrella_body.meeting_day, parton_saint: @umbrella_body.parton_saint } }
    assert_redirected_to umbrella_body_url(@umbrella_body)
  end

  test "should destroy umbrella_body" do
    assert_difference('UmbrellaBody.count', -1) do
      delete umbrella_body_url(@umbrella_body)
    end

    assert_redirected_to umbrella_bodies_url
  end
end
