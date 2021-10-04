require 'test_helper'

class SocialGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_group = social_groups(:one)
  end

  test "should get index" do
    get social_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_social_group_url
    assert_response :success
  end

  test "should create social_group" do
    assert_difference('SocialGroup.count') do
      post social_groups_url, params: { social_group: { name: @social_group.name, user_id: @social_group.user_id } }
    end

    assert_redirected_to social_group_url(SocialGroup.last)
  end

  test "should show social_group" do
    get social_group_url(@social_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_group_url(@social_group)
    assert_response :success
  end

  test "should update social_group" do
    patch social_group_url(@social_group), params: { social_group: { name: @social_group.name, user_id: @social_group.user_id } }
    assert_redirected_to social_group_url(@social_group)
  end

  test "should destroy social_group" do
    assert_difference('SocialGroup.count', -1) do
      delete social_group_url(@social_group)
    end

    assert_redirected_to social_groups_url
  end
end
