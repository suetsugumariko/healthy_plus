class CreateHealthRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :health_records do |t|


      #体調管理ID
      #日付
      t.datetime :start_time
      #体重
      t.float :body_weight
      #体温
      t.float :temperature
      #脈拍
      t.integer :pulse
      #最高血圧
      t.integer :max_blood_pressure
      #最低血圧
      t.integer :min_blood_pressure
      #SPO2
      t.integer :saturations





      t.timestamps
    end
  end
end
