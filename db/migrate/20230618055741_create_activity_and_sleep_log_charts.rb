class CreateActivityAndSleepLogCharts < ActiveRecord::Migration[6.1]
  def change
    create_table :activity_and_sleep_log_charts do |t|

      t.timestamps
    end
  end
end
