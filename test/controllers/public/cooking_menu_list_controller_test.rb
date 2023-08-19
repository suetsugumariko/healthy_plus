# frozen_string_literal: true

require "test_helper"

class Public::CookingMenuListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_cooking_menu_list_index_url
    assert_response :success
  end
end
