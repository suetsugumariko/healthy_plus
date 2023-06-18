class CreatePrescriptionLists < ActiveRecord::Migration[6.1]
  def change
    create_table :prescription_lists do |t|

      t.timestamps
    end
  end
end
