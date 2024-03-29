# frozen_string_literal: true

class CreateNextMedicalCheckupDateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :next_medical_checkup_date_lists do |t|
      t.references :customer, null: false, foreign_key: true

      # 次回受診日ID
      # 予定の日
      t.string :title
      t.text :content
      t.datetime :start_time

      t.timestamps
    end
  end
end
