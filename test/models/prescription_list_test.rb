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
require "test_helper"

class PrescriptionListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
