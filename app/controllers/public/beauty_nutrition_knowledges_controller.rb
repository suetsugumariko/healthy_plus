class Public::BeautyNutritionKnowledgesController < ApplicationController
  def index
    @beauty_nutrition_knowledge = BeautyNutritionKnowledge.all
  end


  private
    # ストロングパラメータ
    # formから送られてくるデータの中身
    def beauty_nutrition_knowledge_params
      # require 送られたデータの中からモデル名を指定しデータを絞り込む
      # permit requireで絞り込んだデータの中から保存を許可するカラムを指定する
      params.require(:beauty_nutrition_knowledge).permit(:genre_id, :title, :contrnts)
    end
end
