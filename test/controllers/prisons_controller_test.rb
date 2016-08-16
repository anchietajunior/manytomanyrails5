require 'test_helper'

class PrisonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prison = prisons(:one)
  end

  test "should get index" do
    get prisons_url
    assert_response :success
  end

  test "should get new" do
    get new_prison_url
    assert_response :success
  end

  test "should create prison" do
    assert_difference('Prison.count') do
      post prisons_url, params: { prison: { name: @prison.name } }
    end

    assert_redirected_to prison_url(Prison.last)
  end

  test "should show prison" do
    get prison_url(@prison)
    assert_response :success
  end

  test "should get edit" do
    get edit_prison_url(@prison)
    assert_response :success
  end

  test "should update prison" do
    patch prison_url(@prison), params: { prison: { name: @prison.name } }
    assert_redirected_to prison_url(@prison)
  end

  test "should destroy prison" do
    assert_difference('Prison.count', -1) do
      delete prison_url(@prison)
    end

    assert_redirected_to prisons_url
  end
end
