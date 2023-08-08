class PrescriptionList < ApplicationRecord
#処方箋一覧
belongs_to :customer

validates :chemical_name, presence: true, allow_blank: true, length: { maximum: 100 }
validates :prescription_period, presence: true, allow_blank: true, length: { maximum: 100 }
validates :note, presence: true, allow_blank: true, length: { maximum: 500 }

end

# == Schema Information
#
# Table name: prescription_lists
#
#  id                  :integer          not null, primary key
#  chemical_name       :string
#  note                :text
#  prescription_period :date
#  start_time          :datetime
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  customer_id         :integer          not null
#
# Indexes
#
#  index_prescription_lists_on_customer_id  (customer_id)
#
# Foreign Keys
#
#  customer_id  (customer_id => customers.id)
#
