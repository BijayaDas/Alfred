require 'test_helper'

class AutomatedTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @automated_task = automated_tasks(:one)
  end

  test "should get index" do
    get automated_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_automated_task_url
    assert_response :success
  end

  test "should create automated_task" do
    assert_difference('AutomatedTask.count') do
      post automated_tasks_url, params: { automated_task: {  } }
    end

    assert_redirected_to automated_task_url(AutomatedTask.last)
  end

  test "should show automated_task" do
    get automated_task_url(@automated_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_automated_task_url(@automated_task)
    assert_response :success
  end

  test "should update automated_task" do
    patch automated_task_url(@automated_task), params: { automated_task: {  } }
    assert_redirected_to automated_task_url(@automated_task)
  end

  test "should destroy automated_task" do
    assert_difference('AutomatedTask.count', -1) do
      delete automated_task_url(@automated_task)
    end

    assert_redirected_to automated_tasks_url
  end
end
