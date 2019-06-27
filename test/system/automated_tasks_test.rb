require "application_system_test_case"

class AutomatedTasksTest < ApplicationSystemTestCase
  setup do
    @automated_task = automated_tasks(:one)
  end

  test "visiting the index" do
    visit automated_tasks_url
    assert_selector "h1", text: "Automated Tasks"
  end

  test "creating a Automated task" do
    visit automated_tasks_url
    click_on "New Automated Task"

    click_on "Create Automated task"

    assert_text "Automated task was successfully created"
    click_on "Back"
  end

  test "updating a Automated task" do
    visit automated_tasks_url
    click_on "Edit", match: :first

    click_on "Update Automated task"

    assert_text "Automated task was successfully updated"
    click_on "Back"
  end

  test "destroying a Automated task" do
    visit automated_tasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Automated task was successfully destroyed"
  end
end
