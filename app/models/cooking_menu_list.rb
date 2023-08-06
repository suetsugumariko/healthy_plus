class CookingMenuList < ApplicationRecord
#食事メニュー表

end

# == Schema Information
#
# Table name: cooking_menu_lists
#
#  id                  :integer          not null, primary key
#  for_how_meny_people :string
#  material            :text
#  title               :string
#  way_of_making       :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
