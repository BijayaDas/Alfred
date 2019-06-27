require "application_system_test_case"

class DigitalLockersTest < ApplicationSystemTestCase
  setup do
    @digital_locker = digital_lockers(:one)
  end

  test "visiting the index" do
    visit digital_lockers_url
    assert_selector "h1", text: "Digital Lockers"
  end

  test "creating a Digital locker" do
    visit digital_lockers_url
    click_on "New Digital Locker"

    click_on "Create Digital locker"

    assert_text "Digital locker was successfully created"
    click_on "Back"
  end

  test "updating a Digital locker" do
    visit digital_lockers_url
    click_on "Edit", match: :first

    click_on "Update Digital locker"

    assert_text "Digital locker was successfully updated"
    click_on "Back"
  end

  test "destroying a Digital locker" do
    visit digital_lockers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Digital locker was successfully destroyed"
  end
end
