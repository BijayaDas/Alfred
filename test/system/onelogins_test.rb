require "application_system_test_case"

class OneloginsTest < ApplicationSystemTestCase
  setup do
    @onelogin = onelogins(:one)
  end

  test "visiting the index" do
    visit onelogins_url
    assert_selector "h1", text: "Onelogins"
  end

  test "creating a Onelogin" do
    visit onelogins_url
    click_on "New Onelogin"

    click_on "Create Onelogin"

    assert_text "Onelogin was successfully created"
    click_on "Back"
  end

  test "updating a Onelogin" do
    visit onelogins_url
    click_on "Edit", match: :first

    click_on "Update Onelogin"

    assert_text "Onelogin was successfully updated"
    click_on "Back"
  end

  test "destroying a Onelogin" do
    visit onelogins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Onelogin was successfully destroyed"
  end
end
