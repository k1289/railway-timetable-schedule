require 'test_helper'

class RunschedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @runschedule = runschedules(:one)
  end

  test "should get index" do
    get runschedules_url
    assert_response :success
  end

  test "should get new" do
    get new_runschedule_url
    assert_response :success
  end

  test "should create runschedule" do
    assert_difference('Runschedule.count') do
      post runschedules_url, params: { runschedule: { newarrtime: @runschedule.newarrtime, newdepttime: @runschedule.newdepttime, newplatformnum: @runschedule.newplatformnum } }
    end

    assert_redirected_to runschedule_url(Runschedule.last)
  end

  test "should show runschedule" do
    get runschedule_url(@runschedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_runschedule_url(@runschedule)
    assert_response :success
  end

  test "should update runschedule" do
    patch runschedule_url(@runschedule), params: { runschedule: { newarrtime: @runschedule.newarrtime, newdepttime: @runschedule.newdepttime, newplatformnum: @runschedule.newplatformnum } }
    assert_redirected_to runschedule_url(@runschedule)
  end

  test "should destroy runschedule" do
    assert_difference('Runschedule.count', -1) do
      delete runschedule_url(@runschedule)
    end

    assert_redirected_to runschedules_url
  end
end
