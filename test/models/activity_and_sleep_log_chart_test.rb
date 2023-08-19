# frozen_string_literal: true

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
require "test_helper"

class ActivityAndSleepLogChartTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
