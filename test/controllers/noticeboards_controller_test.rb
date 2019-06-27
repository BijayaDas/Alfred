require 'test_helper'

class NoticeboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @noticeboard = noticeboards(:one)
  end

  test "should get index" do
    get noticeboards_url
    assert_response :success
  end

  test "should get new" do
    get new_noticeboard_url
    assert_response :success
  end

  test "should create noticeboard" do
    assert_difference('Noticeboard.count') do
      post noticeboards_url, params: { noticeboard: {  } }
    end

    assert_redirected_to noticeboard_url(Noticeboard.last)
  end

  test "should show noticeboard" do
    get noticeboard_url(@noticeboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_noticeboard_url(@noticeboard)
    assert_response :success
  end

  test "should update noticeboard" do
    patch noticeboard_url(@noticeboard), params: { noticeboard: {  } }
    assert_redirected_to noticeboard_url(@noticeboard)
  end

  test "should destroy noticeboard" do
    assert_difference('Noticeboard.count', -1) do
      delete noticeboard_url(@noticeboard)
    end

    assert_redirected_to noticeboards_url
  end
end
