class CreateCookingMenuLists < ActiveRecord::Migration[6.1]
  def change
    create_table :cooking_menu_lists do |t|
      t.references :customer, null: false, foreign_key: true

      #食事メニューID
      #食事名　タイトル
      t.string :title
      #何人前
      t.string :for_how_meny_people
      #材料
      t.text :material, default: ""
      #作り方
      t.text :way_of_making, default: ""



      t.timestamps
    end
  end
end
