class Public::CookingMenuListController < ApplicationController
  def index
    @cooking_menu_list = CookingMenuList.all
  end

  private
  #ストロングパラメータ
  #formから送られてくるデータの中身
  def cooking_menu_list_params
  #require 送られたデータの中からモデル名を指定しデータを絞り込む
  #permit requireで絞り込んだデータの中から保存を許可するカラムを指定する
    params.require(:cooking_menu_list).permit(:title, :for_how_meny_people, :material, :way_of_making)
  end
end
