class CreateHealthRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :health_records do |t|

      t.timestamps
    end
  end
end
