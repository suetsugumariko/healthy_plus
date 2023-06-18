require "test_helper"

class Public::DosageRecordSheetControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_dosage_record_sheet_index_url
    assert_response :success
  end

  test "should get new" do
    get public_dosage_record_sheet_new_url
    assert_response :success
  end

  test "should get edit" do
    get public_dosage_record_sheet_edit_url
    assert_response :success
  end

  test "should get update" do
    get public_dosage_record_sheet_update_url
    assert_response :success
  end

  test "should get destroy" do
    get public_dosage_record_sheet_destroy_url
    assert_response :success
  end
end
