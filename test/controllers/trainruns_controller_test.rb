require 'test_helper'

class TrainrunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trainrun = trainruns(:one)
  end

  test "should get index" do
    get trainruns_url
    assert_response :success
  end

  test "should get new" do
    get new_trainrun_url
    assert_response :success
  end

  test "should create trainrun" do
    assert_difference('Trainrun.count') do
      post trainruns_url, params: { trainrun: { date: @trainrun.date, status: @trainrun.status, trainnum: @trainrun.trainnum } }
    end

    assert_redirected_to trainrun_url(Trainrun.last)
  end

  test "should show trainrun" do
    get trainrun_url(@trainrun)
    assert_response :success
  end

  test "should get edit" do
    get edit_trainrun_url(@trainrun)
    assert_response :success
  end

  test "should update trainrun" do
    patch trainrun_url(@trainrun), params: { trainrun: { date: @trainrun.date, status: @trainrun.status, trainnum: @trainrun.trainnum } }
    assert_redirected_to trainrun_url(@trainrun)
  end

  test "should destroy trainrun" do
    assert_difference('Trainrun.count', -1) do
      delete trainrun_url(@trainrun)
    end

    assert_redirected_to trainruns_url
  end
end
