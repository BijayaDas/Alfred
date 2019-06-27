require "application_system_test_case"

class FinancialsTest < ApplicationSystemTestCase
  setup do
    @financial = financials(:one)
  end

  test "visiting the index" do
    visit financials_url
    assert_selector "h1", text: "Financials"
  end

  test "creating a Financial" do
    visit financials_url
    click_on "New Financial"

    click_on "Create Financial"

    assert_text "Financial was successfully created"
    click_on "Back"
  end

  test "updating a Financial" do
    visit financials_url
    click_on "Edit", match: :first

    click_on "Update Financial"

    assert_text "Financial was successfully updated"
    click_on "Back"
  end

  test "destroying a Financial" do
    visit financials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Financial was successfully destroyed"
  end
end
