class CreateDosageRecordSheets < ActiveRecord::Migration[6.1]
  def change
    create_table :dosage_record_sheets do |t|
      t.references :customer, null: false, foreign_key: true

      # 服用記録ID
      # 予定の日
      t.string :title
      t.text :content
      t.datetime :start_time

      t.timestamps
    end
  end
end
