# frozen_string_literal: true

require "test_helper"

class Public::HealthRecordControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_health_record_index_url
    assert_response :success
  end

  test "should get new" do
    get public_health_record_new_url
    assert_response :success
  end

  test "should get edit" do
    get public_health_record_edit_url
    assert_response :success
  end

  test "should get update" do
    get public_health_record_update_url
    assert_response :success
  end

  test "should get destroy" do
    get public_health_record_destroy_url
    assert_response :success
  end
end
