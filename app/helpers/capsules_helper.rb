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

module CapsulesHelper
  def thumbnail capsule
    picture = capsule.pictures.first
    if picture.present? && picture.image.present?
      image_tag picture.image.url(:medium)
    else
      image_tag 'no-image.jpg'
    end
  end

end
