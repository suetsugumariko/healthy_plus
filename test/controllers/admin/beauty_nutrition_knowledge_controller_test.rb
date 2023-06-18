require "test_helper"

class Admin::BeautyNutritionKnowledgeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_beauty_nutrition_knowledge_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_beauty_nutrition_knowledge_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_beauty_nutrition_knowledge_create_url
    assert_response :success
  end

  test "should get show" do
    get admin_beauty_nutrition_knowledge_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_beauty_nutrition_knowledge_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_beauty_nutrition_knowledge_update_url
    assert_response :success
  end
end
