class HealthRecord < ApplicationRecord
#体調記録表


belongs_to :customer

 validates :body_weight, presence: true, allow_blank: true, numericality: { in: 10..120 }
 validates :max_blood_pressure, presence: true, allow_blank: true, numericality: { in: 80..200 }
 validates :min_blood_pressure, presence: true, allow_blank: true, numericality: { in: 40..120 }
 validates :pulse, presence: true, allow_blank: true, numericality: { in: 50..120 }
 validates :saturation, presence: true, allow_blank: true, numericality: { in: 90..100 }
 validates :temperature, presence: true, allow_blank: true, numericality: { in: 35..40 }
end

# == Schema Information
#
# Table name: health_records
#
#  id                 :integer          not null, primary key
#  body_weight        :float
#  max_blood_pressure :integer
#  min_blood_pressure :integer
#  pulse              :integer
#  saturation         :integer
#  start_time         :datetime
#  temperature        :float
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  customer_id        :integer          not null
#
# Indexes
#
#  index_health_records_on_customer_id  (customer_id)
#
# Foreign Keys
#
#  customer_id  (customer_id => customers.id)
#
