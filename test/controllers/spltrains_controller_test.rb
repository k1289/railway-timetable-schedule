require 'test_helper'

class SpltrainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spltrain = spltrains(:one)
  end

  test "should get index" do
    get spltrains_url
    assert_response :success
  end

  test "should get new" do
    get new_spltrain_url
    assert_response :success
  end

  test "should create spltrain" do
    assert_difference('Spltrain.count') do
      post spltrains_url, params: { spltrain: { date: @spltrain.date, status: @spltrain.status } }
    end

    assert_redirected_to spltrain_url(Spltrain.last)
  end

  test "should show spltrain" do
    get spltrain_url(@spltrain)
    assert_response :success
  end

  test "should get edit" do
    get edit_spltrain_url(@spltrain)
    assert_response :success
  end

  test "should update spltrain" do
    patch spltrain_url(@spltrain), params: { spltrain: { date: @spltrain.date, status: @spltrain.status } }
    assert_redirected_to spltrain_url(@spltrain)
  end

  test "should destroy spltrain" do
    assert_difference('Spltrain.count', -1) do
      delete spltrain_url(@spltrain)
    end

    assert_redirected_to spltrains_url
  end
end
