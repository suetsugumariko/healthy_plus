# frozen_string_literal: true

class Public::BeautyNutritionKnowledgesController < ApplicationController
  def index
    #美容、栄養の豆知識の閲覧
    @beauty_nutrition_knowledge = BeautyNutritionKnowledge.all
  end
end
