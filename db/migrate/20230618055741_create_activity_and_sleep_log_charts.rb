class CreateActivityAndSleepLogCharts < ActiveRecord::Migration[6.1]
  def change
    create_table :activity_and_sleep_log_charts do |t|
      t.references :customer, null: false, foreign_key: true


      #活動、睡眠記録ID
      #日時
      t.datetime :start_time
      #運動時間
      t.integer :exercise_time
      #睡眠時間
      t.integer :hours_of_sleep



      t.timestamps
    end
  end
end
