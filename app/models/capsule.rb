# == Schema Information
#
# Table name: capsules
#
#  id         :integer          not null, primary key
#  message    :text
#  dig_date   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Capsule < ApplicationRecord
	has_many :pictures, dependent: :destroy, :inverse_of => :capsule
	accepts_nested_attributes_for :pictures
end
