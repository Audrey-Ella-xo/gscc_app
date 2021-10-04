require "application_system_test_case"

class SocialGroupsTest < ApplicationSystemTestCase
  setup do
    @social_group = social_groups(:one)
  end

  test "visiting the index" do
    visit social_groups_url
    assert_selector "h1", text: "Social Groups"
  end

  test "creating a Social group" do
    visit social_groups_url
    click_on "New Social Group"

    fill_in "Name", with: @social_group.name
    fill_in "User", with: @social_group.user_id
    click_on "Create Social group"

    assert_text "Social group was successfully created"
    click_on "Back"
  end

  test "updating a Social group" do
    visit social_groups_url
    click_on "Edit", match: :first

    fill_in "Name", with: @social_group.name
    fill_in "User", with: @social_group.user_id
    click_on "Update Social group"

    assert_text "Social group was successfully updated"
    click_on "Back"
  end

  test "destroying a Social group" do
    visit social_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Social group was successfully destroyed"
  end
end
