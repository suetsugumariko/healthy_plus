class CreateBeautyNutritionKnowledges < ActiveRecord::Migration[6.1]
  def change
    create_table :beauty_nutrition_knowledges do |t|
      #t.references :customer, null: false, foreign_key: true


      #美容、栄養知識ID
      #ジャンル名
      t.integer :genre, null: false
      #タイトル
      t.string :title
      #内容
      t.text :content


      t.timestamps
    end
  end
end
