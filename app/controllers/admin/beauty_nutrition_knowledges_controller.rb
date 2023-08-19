# frozen_string_literal: true

class Admin::BeautyNutritionKnowledgesController < ApplicationController
  def index
    @beauty_nutrition_knowledges = BeautyNutritionKnowledge.all
  end

  def new
    @beauty_nutrition_knowledge = BeautyNutritionKnowledge.new
  end

  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    @beauty_nutrition_knowledge = BeautyNutritionKnowledge.new(beauty_nutrition_knowledge_params)

    # 3. データをデータベースに保存するためのsaveメソッド実行
    if @beauty_nutrition_knowledge.save
      flash[:notice] = "success"
      # 4. 詳細画面へリダイレクト
      redirect_to admin_beauty_nutrition_knowledges_path
    else
      flash.now[:alert] = "failed"
      render :new
    end
  end

  def show
    @beauty_nutrition_knowledge = BeautyNutritionKnowledge.find(params[:id])
  end

  def edit
    @beauty_nutrition_knowledge = BeautyNutritionKnowledge.find(params[:id])
  end

  def update
    beauty_nutrition_knowledge = BeautyNutritionKnowledge.find(params[:id])
    beauty_nutrition_knowledge.update(beauty_nutrition_knowledge_params)
    redirect_to admin_beauty_nutrition_knowledges_path(beauty_nutrition_knowledge.id)
  end

  def destroy
    beauty_nutrition_knowledge = BeautyNutritionKnowledge.find(params[:id])  # データ（レコード）を1件取得
    beauty_nutrition_knowledge.destroy  # データ（レコード）を削除
    redirect_to admin_beauty_nutrition_knowledges_path  # 投稿一覧画面へリダイレクト
  end


  private
    # ストロングパラメータ
    def beauty_nutrition_knowledge_params
      params.require(:beauty_nutrition_knowledge).permit(:title, :genre, :content)
    end
end
