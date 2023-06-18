class CreatePrescriptionLists < ActiveRecord::Migration[6.1]
  def change
    create_table :prescription_lists do |t|

      #処方箋一覧ID
      #日時
      t.datetime :start_time
      #薬品名
      t.string :chemical_name
      #処方期間
      t.date :prescription_period
      #備考
      t.text :note





      t.timestamps
    end
  end
end
