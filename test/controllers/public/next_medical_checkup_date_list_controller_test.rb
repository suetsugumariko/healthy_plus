require "test_helper"

class Public::NextMedicalCheckupDateListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_next_medical_checkup_date_list_index_url
    assert_response :success
  end

  test "should get new" do
    get public_next_medical_checkup_date_list_new_url
    assert_response :success
  end

  test "should get edit" do
    get public_next_medical_checkup_date_list_edit_url
    assert_response :success
  end

  test "should get update" do
    get public_next_medical_checkup_date_list_update_url
    assert_response :success
  end

  test "should get destroy" do
    get public_next_medical_checkup_date_list_destroy_url
    assert_response :success
  end
end
