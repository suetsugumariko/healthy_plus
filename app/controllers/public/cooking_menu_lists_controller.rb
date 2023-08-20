# frozen_string_literal: true

class Public::CookingMenuListsController < ApplicationController
  def index
    #食事メニューの一覧を閲覧
    @cooking_menu_list = CookingMenuList.all
  end
end
