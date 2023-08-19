# frozen_string_literal: true

require "test_helper"

class Public::ActivityAndSleepLogChartControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_activity_and_sleep_log_chart_index_url
    assert_response :success
  end

  test "should get new" do
    get public_activity_and_sleep_log_chart_new_url
    assert_response :success
  end

  test "should get edit" do
    get public_activity_and_sleep_log_chart_edit_url
    assert_response :success
  end

  test "should get update" do
    get public_activity_and_sleep_log_chart_update_url
    assert_response :success
  end

  test "should get destroy" do
    get public_activity_and_sleep_log_chart_destroy_url
    assert_response :success
  end
end
