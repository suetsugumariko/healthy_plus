# frozen_string_literal: true

require "test_helper"

class Admin::CookingMenuListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_cooking_menu_list_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_cooking_menu_list_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_cooking_menu_list_create_url
    assert_response :success
  end

  test "should get show" do
    get admin_cooking_menu_list_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_cooking_menu_list_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_cooking_menu_list_update_url
    assert_response :success
  end
end
