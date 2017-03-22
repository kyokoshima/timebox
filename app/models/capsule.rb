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

class Capsule < ApplicationRecord
	has_many :pictures, dependent: :destroy, :inverse_of => :capsule
	accepts_nested_attributes_for :pictures

	enum status: { yet: 0, done: 1}

  validates :message, presence: true
  validates :dig_date, presence: true
  validates :title, presence: true
  validates :mail_address, presence: true
  validates_presence_of :pictures

end
