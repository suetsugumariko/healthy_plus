class CreateDosageRecordSheets < ActiveRecord::Migration[6.1]
  def change
    create_table :dosage_record_sheets do |t|

      t.timestamps
    end
  end
end
