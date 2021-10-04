require "application_system_test_case"

class UmbrellaBodiesTest < ApplicationSystemTestCase
  setup do
    @umbrella_body = umbrella_bodies(:one)
  end

  test "visiting the index" do
    visit umbrella_bodies_url
    assert_selector "h1", text: "Umbrella Bodies"
  end

  test "creating a Umbrella body" do
    visit umbrella_bodies_url
    click_on "New Umbrella Body"

    fill_in "Aim", with: @umbrella_body.aim
    fill_in "Executives", with: @umbrella_body.executives
    fill_in "Img", with: @umbrella_body.img
    fill_in "Meeting day", with: @umbrella_body.meeting_day
    fill_in "Parton saint", with: @umbrella_body.parton_saint
    click_on "Create Umbrella body"

    assert_text "Umbrella body was successfully created"
    click_on "Back"
  end

  test "updating a Umbrella body" do
    visit umbrella_bodies_url
    click_on "Edit", match: :first

    fill_in "Aim", with: @umbrella_body.aim
    fill_in "Executives", with: @umbrella_body.executives
    fill_in "Img", with: @umbrella_body.img
    fill_in "Meeting day", with: @umbrella_body.meeting_day
    fill_in "Parton saint", with: @umbrella_body.parton_saint
    click_on "Update Umbrella body"

    assert_text "Umbrella body was successfully updated"
    click_on "Back"
  end

  test "destroying a Umbrella body" do
    visit umbrella_bodies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Umbrella body was successfully destroyed"
  end
end
