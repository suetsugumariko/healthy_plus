# frozen_string_literal: true

class ActivityAndSleepLogChart < ApplicationRecord
  belongs_to :customer
  validates :exercise_time, presence: true, allow_blank: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 20 }
  validates :hours_of_sleep, presence: true, allow_blank: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 24 }
end

# == Schema Information
#
# Table name: activity_and_sleep_log_charts
#
#  id             :integer          not null, primary key
#  exercise_time  :integer
#  hours_of_sleep :integer
#  start_time     :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  customer_id    :integer          not null
#
# Indexes
#
#  index_activity_and_sleep_log_charts_on_customer_id  (customer_id)
#
# Foreign Keys
#
#  customer_id  (customer_id => customers.id)
#
