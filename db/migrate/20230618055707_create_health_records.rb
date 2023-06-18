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
      #血圧
      t.string :blood_pressure
      #SPO2
      t.integer :saturation





      t.timestamps
    end
  end
end
