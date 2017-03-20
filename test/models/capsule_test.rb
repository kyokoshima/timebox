# == Schema Information
#
# Table name: capsules
#
#  id           :integer          not null, primary key
#  message      :text
#  dig_date     :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  title        :string
#  mail_address :string
#

require 'test_helper'

class CapsuleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
