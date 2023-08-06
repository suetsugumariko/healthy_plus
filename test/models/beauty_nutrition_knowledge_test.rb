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
require "test_helper"

class BeautyNutritionKnowledgeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
