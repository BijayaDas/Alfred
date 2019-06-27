require 'test_helper'

class DigitalLockersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @digital_locker = digital_lockers(:one)
  end

  test "should get index" do
    get digital_lockers_url
    assert_response :success
  end

  test "should get new" do
    get new_digital_locker_url
    assert_response :success
  end

  test "should create digital_locker" do
    assert_difference('DigitalLocker.count') do
      post digital_lockers_url, params: { digital_locker: {  } }
    end

    assert_redirected_to digital_locker_url(DigitalLocker.last)
  end

  test "should show digital_locker" do
    get digital_locker_url(@digital_locker)
    assert_response :success
  end

  test "should get edit" do
    get edit_digital_locker_url(@digital_locker)
    assert_response :success
  end

  test "should update digital_locker" do
    patch digital_locker_url(@digital_locker), params: { digital_locker: {  } }
    assert_redirected_to digital_locker_url(@digital_locker)
  end

  test "should destroy digital_locker" do
    assert_difference('DigitalLocker.count', -1) do
      delete digital_locker_url(@digital_locker)
    end

    assert_redirected_to digital_lockers_url
  end
end
