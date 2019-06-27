require 'test_helper'

class OneloginsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @onelogin = onelogins(:one)
  end

  test "should get index" do
    get onelogins_url
    assert_response :success
  end

  test "should get new" do
    get new_onelogin_url
    assert_response :success
  end

  test "should create onelogin" do
    assert_difference('Onelogin.count') do
      post onelogins_url, params: { onelogin: {  } }
    end

    assert_redirected_to onelogin_url(Onelogin.last)
  end

  test "should show onelogin" do
    get onelogin_url(@onelogin)
    assert_response :success
  end

  test "should get edit" do
    get edit_onelogin_url(@onelogin)
    assert_response :success
  end

  test "should update onelogin" do
    patch onelogin_url(@onelogin), params: { onelogin: {  } }
    assert_redirected_to onelogin_url(@onelogin)
  end

  test "should destroy onelogin" do
    assert_difference('Onelogin.count', -1) do
      delete onelogin_url(@onelogin)
    end

    assert_redirected_to onelogins_url
  end
end
