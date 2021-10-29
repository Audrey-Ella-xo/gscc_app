require "application_system_test_case"

class MassBookingsTest < ApplicationSystemTestCase
  setup do
    @mass_booking = mass_bookings(:one)
  end

  test "visiting the index" do
    visit mass_bookings_url
    assert_selector "h1", text: "Mass Bookings"
  end

  test "creating a Mass booking" do
    visit mass_bookings_url
    click_on "New Mass Booking"

    fill_in "Booking type", with: @mass_booking.booking_type
    fill_in "Duration", with: @mass_booking.duration
    fill_in "Ends at", with: @mass_booking.ends_at
    fill_in "Location", with: @mass_booking.location
    fill_in "Purpose", with: @mass_booking.purpose
    fill_in "Starts at", with: @mass_booking.starts_at
    click_on "Create Mass booking"

    assert_text "Mass booking was successfully created"
    click_on "Back"
  end

  test "updating a Mass booking" do
    visit mass_bookings_url
    click_on "Edit", match: :first

    fill_in "Booking type", with: @mass_booking.booking_type
    fill_in "Duration", with: @mass_booking.duration
    fill_in "Ends at", with: @mass_booking.ends_at
    fill_in "Location", with: @mass_booking.location
    fill_in "Purpose", with: @mass_booking.purpose
    fill_in "Starts at", with: @mass_booking.starts_at
    click_on "Update Mass booking"

    assert_text "Mass booking was successfully updated"
    click_on "Back"
  end

  test "destroying a Mass booking" do
    visit mass_bookings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mass booking was successfully destroyed"
  end
end
