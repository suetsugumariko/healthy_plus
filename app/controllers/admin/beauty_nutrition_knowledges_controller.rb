class Admin::BeautyNutritionKnowledgesController < ApplicationController
  def index
    @beauty_nutrition_knowledges = BeautyNutritionKnowledge.all
  end

  def new
    @beauty_nutrition_knowledge = BeautyNutritionKnowledge.new
  end

  def create
     # １.&2. データを受け取り新規登録するためのインスタンス作成
    beauty_nutrition_knowledge = BeautyNutritionKnowledge.new(beauty_nutrition_knowledge_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    beauty_nutrition_knowledge.save
    # 4. トップ画面へリダイレクト
    redirect_to '/top'
  end

  def show
  end

  def edit
  end

  def update
  end


  private
  # ストロングパラメータ
  def beauty_nutrition_knowledge_params
    params.require(:beauty_nutrition_knowledge).permit(:title, :genre_id, :contrnts)
  end
end
