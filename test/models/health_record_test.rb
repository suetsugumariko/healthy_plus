# frozen_string_literal: true

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
require "test_helper"

class HealthRecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
