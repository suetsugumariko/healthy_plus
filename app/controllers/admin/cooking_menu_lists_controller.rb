# frozen_string_literal: true

#食事メニュー
class Admin::CookingMenuListsController < ApplicationController
  def index
    @cooking_menu_list = CookingMenuList.all
  end

  def new
    @cooking_menu_list = CookingMenuList.new
  end

  def create
    # データを受け取り新規登録するためのインスタンス作成
    @cooking_menu_list = CookingMenuList.new(cooking_menu_list_params)
    # データをデータベースに保存するためのsaveメソッド実行
    if @cooking_menu_list.save
      flash[:notice] = "success"
      redirect_to admin_cooking_menu_lists_path
    else
      flash.now[:alert] = "failed"
      render :new
    end
  end

  def show
    @cooking_menu_list = CookingMenuList.find(params[:id])
  end

  def edit
    @cooking_menu_list = CookingMenuList.find(params[:id])
  end

  def update
    cooking_menu_list = CookingMenuList.find(params[:id])
    cooking_menu_list.update(cooking_menu_list_params)
    redirect_to admin_cooking_menu_list_path(admin_cooking_menu_list.id)
  end

  def destroy
    cooking_menu_list = List.find(params[:id])  # データ（レコード）を1件取得
    cooking_menu_list.destroy  # データ（レコード）を削除
    redirect_to " /admin/cooking_menu_lists"  # 投稿一覧画面へリダイレクト
  end

  private
    # ストロングパラメータ
    def cooking_menu_list_params
      params.require(:cooking_menu_list).permit(:title, :for_how_meny_people, :material, :way_of_making)
    end
end
