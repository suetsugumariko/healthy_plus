class DosageRecordSheet < ApplicationRecord
  # 服用記録表
  belongs_to :customer

  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true, length: { maximum: 500 }
end

# == Schema Information
#
# Table name: dosage_record_sheets
#
#  id          :integer          not null, primary key
#  content     :text
#  start_time  :datetime
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :integer          not null
#
# Indexes
#
#  index_dosage_record_sheets_on_customer_id  (customer_id)
#
# Foreign Keys
#
#  customer_id  (customer_id => customers.id)
#
