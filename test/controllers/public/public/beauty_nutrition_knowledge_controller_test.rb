# frozen_string_literal: true

require "test_helper"

class Public::Public::BeautyNutritionKnowledgeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_public_beauty_nutrition_knowledge_index_url
    assert_response :success
  end
end
