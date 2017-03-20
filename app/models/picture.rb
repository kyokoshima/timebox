# == Schema Information
#
# Table name: pictures
#
#  id                 :integer          not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  capsule_id         :integer
#

class Picture < ApplicationRecord
	belongs_to :capsule, :inverse_of => :pictures
	# has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
has_attached_file :image,
  styles: lambda { |file|
    if file.instance.is_video?
      {
        medium:    { geometry: '240x240#', format: 'jpg', time: 77, auto_rotate: true},
        thumbnail: { geometry: '64x64#', format: 'jpg', time: 77, auto_rotate: true },
      }
    else
      { :medium => "300x300>", :thumb => "100x100>" }
    end
  },
  storage: :filesystem,
  # path: ":image/:id/:style/:filename",
  processors: lambda { |file| file.is_video? ? [ :transcoder ] : [ :thumbnail ] }
  validates_attachment_content_type :image, 
  	# content_type: { 
  		content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif", "video/mp4", "video/mov", "video/quicktime"]
  	# }

def is_video?
  image.instance.image_content_type =~ %r(video) ? true : false
end


end

