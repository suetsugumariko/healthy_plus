class CreateBeautyNutritionKnowledges < ActiveRecord::Migration[6.1]
  def change
    create_table :beauty_nutrition_knowledges do |t|



      #美容、栄養知識ID
      #ジャンル名
      t.text :genre_id
      #タイトル
      t.string :title
      #内容
      t.text :contrnts


      t.timestamps
    end
  end
end
