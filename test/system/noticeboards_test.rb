require "application_system_test_case"

class NoticeboardsTest < ApplicationSystemTestCase
  setup do
    @noticeboard = noticeboards(:one)
  end

  test "visiting the index" do
    visit noticeboards_url
    assert_selector "h1", text: "Noticeboards"
  end

  test "creating a Noticeboard" do
    visit noticeboards_url
    click_on "New Noticeboard"

    click_on "Create Noticeboard"

    assert_text "Noticeboard was successfully created"
    click_on "Back"
  end

  test "updating a Noticeboard" do
    visit noticeboards_url
    click_on "Edit", match: :first

    click_on "Update Noticeboard"

    assert_text "Noticeboard was successfully updated"
    click_on "Back"
  end

  test "destroying a Noticeboard" do
    visit noticeboards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Noticeboard was successfully destroyed"
  end
end
