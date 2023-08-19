class Public::BeautyNutritionKnowledgesController < ApplicationController
  def index
    @beauty_nutrition_knowledge = BeautyNutritionKnowledge.all
  end
end
