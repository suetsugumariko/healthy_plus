# == Schema Information
#
# Table name: next_medical_checkup_date_lists
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
#  index_next_medical_checkup_date_lists_on_customer_id  (customer_id)
#
# Foreign Keys
#
#  customer_id  (customer_id => customers.id)
#
require "test_helper"

class NextMedicalCheckupDateListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
