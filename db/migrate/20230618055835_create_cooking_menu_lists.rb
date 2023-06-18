class CreateCookingMenuLists < ActiveRecord::Migration[6.1]
  def change
    create_table :cooking_menu_lists do |t|

      t.timestamps
    end
  end
end
