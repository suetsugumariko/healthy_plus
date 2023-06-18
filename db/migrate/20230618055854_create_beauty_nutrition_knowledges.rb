class CreateBeautyNutritionKnowledges < ActiveRecord::Migration[6.1]
  def change
    create_table :beauty_nutrition_knowledges do |t|

      t.timestamps
    end
  end
end
