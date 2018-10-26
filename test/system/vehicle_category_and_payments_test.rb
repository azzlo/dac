require "application_system_test_case"

class VehicleCategoryAndPaymentsTest < ApplicationSystemTestCase
  setup do
    @vehicle_category_and_payment = vehicle_category_and_payments(:one)
  end

  test "visiting the index" do
    visit vehicle_category_and_payments_url
    assert_selector "h1", text: "Vehicle Category And Payments"
  end

  test "creating a Vehicle category and payment" do
    visit vehicle_category_and_payments_url
    click_on "New Vehicle Category And Payment"

    fill_in "Category", with: @vehicle_category_and_payment.category
    fill_in "Payment Per Km", with: @vehicle_category_and_payment.payment_per_km
    fill_in "Payment Per Return Km", with: @vehicle_category_and_payment.payment_per_return_km
    click_on "Create Vehicle category and payment"

    assert_text "Vehicle category and payment was successfully created"
    click_on "Back"
  end

  test "updating a Vehicle category and payment" do
    visit vehicle_category_and_payments_url
    click_on "Edit", match: :first

    fill_in "Category", with: @vehicle_category_and_payment.category
    fill_in "Payment Per Km", with: @vehicle_category_and_payment.payment_per_km
    fill_in "Payment Per Return Km", with: @vehicle_category_and_payment.payment_per_return_km
    click_on "Update Vehicle category and payment"

    assert_text "Vehicle category and payment was successfully updated"
    click_on "Back"
  end

  test "destroying a Vehicle category and payment" do
    visit vehicle_category_and_payments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vehicle category and payment was successfully destroyed"
  end
end
