class CreateDosageRecordSheets < ActiveRecord::Migration[6.1]
  def change
    create_table :dosage_record_sheets do |t|


      #服用記録ID
      #予定の日
      t.datetime :start_time

      t.timestamps
    end
  end
end
