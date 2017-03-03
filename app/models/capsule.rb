class Capsule < ApplicationRecord
	has_many :pictures, dependent: :destroy, :inverse_of => :capsule
	accepts_nested_attributes_for :pictures
end