require 'test_helper'

class VehicleCategoryAndPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_category_and_payment = vehicle_category_and_payments(:one)
  end

  test "should get index" do
    get vehicle_category_and_payments_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_category_and_payment_url
    assert_response :success
  end

  test "should create vehicle_category_and_payment" do
    assert_difference('VehicleCategoryAndPayment.count') do
      post vehicle_category_and_payments_url, params: { vehicle_category_and_payment: { category: @vehicle_category_and_payment.category, payment_per_km: @vehicle_category_and_payment.payment_per_km, payment_per_return_km: @vehicle_category_and_payment.payment_per_return_km } }
    end

    assert_redirected_to vehicle_category_and_payment_url(VehicleCategoryAndPayment.last)
  end

  test "should show vehicle_category_and_payment" do
    get vehicle_category_and_payment_url(@vehicle_category_and_payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_category_and_payment_url(@vehicle_category_and_payment)
    assert_response :success
  end

  test "should update vehicle_category_and_payment" do
    patch vehicle_category_and_payment_url(@vehicle_category_and_payment), params: { vehicle_category_and_payment: { category: @vehicle_category_and_payment.category, payment_per_km: @vehicle_category_and_payment.payment_per_km, payment_per_return_km: @vehicle_category_and_payment.payment_per_return_km } }
    assert_redirected_to vehicle_category_and_payment_url(@vehicle_category_and_payment)
  end

  test "should destroy vehicle_category_and_payment" do
    assert_difference('VehicleCategoryAndPayment.count', -1) do
      delete vehicle_category_and_payment_url(@vehicle_category_and_payment)
    end

    assert_redirected_to vehicle_category_and_payments_url
  end
end
