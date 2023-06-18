class CreateNextMedicalCheckupDateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :next_medical_checkup_date_lists do |t|

      t.timestamps
    end
  end
end
