# frozen_string_literal: true

class Public::CookingMenuListsController < ApplicationController
  def index
    @cooking_menu_list = CookingMenuList.all
  end
end
