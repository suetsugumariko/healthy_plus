class BeautyNutritionKnowledge < ApplicationRecord
#美容、栄養豆知識表
  enum genre: { beauty: 0, nutrition: 1 }
  validates :title, presence: true
  validates :content, presence: true
  validates :genre, inclusion: { in: BeautyNutritionKnowledge.genres.keys }
end

# == Schema Information
#
# Table name: beauty_nutrition_knowledges
#
#  id         :integer          not null, primary key
#  content    :text
#  genre      :integer          not null
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
