require 'test_helper'

class MassBookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mass_booking = mass_bookings(:one)
  end

  test "should get index" do
    get mass_bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_mass_booking_url
    assert_response :success
  end

  test "should create mass_booking" do
    assert_difference('MassBooking.count') do
      post mass_bookings_url, params: { mass_booking: { booking_type: @mass_booking.booking_type, duration: @mass_booking.duration, ends_at: @mass_booking.ends_at, location: @mass_booking.location, purpose: @mass_booking.purpose, starts_at: @mass_booking.starts_at } }
    end

    assert_redirected_to mass_booking_url(MassBooking.last)
  end

  test "should show mass_booking" do
    get mass_booking_url(@mass_booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_mass_booking_url(@mass_booking)
    assert_response :success
  end

  test "should update mass_booking" do
    patch mass_booking_url(@mass_booking), params: { mass_booking: { booking_type: @mass_booking.booking_type, duration: @mass_booking.duration, ends_at: @mass_booking.ends_at, location: @mass_booking.location, purpose: @mass_booking.purpose, starts_at: @mass_booking.starts_at } }
    assert_redirected_to mass_booking_url(@mass_booking)
  end

  test "should destroy mass_booking" do
    assert_difference('MassBooking.count', -1) do
      delete mass_booking_url(@mass_booking)
    end

    assert_redirected_to mass_bookings_url
  end
end
