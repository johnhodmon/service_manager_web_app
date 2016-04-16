class Video < ActiveRecord::Base
	belongs_to :job

  has_attached_file :video_attachment, :styles => {
    :medium => { :geometry => "640x480", :format => 'mp4' },
    :thumb => { :geometry => "200x200#", :format => 'jpg', :time => 1 }
  }, :processors => [:transcoder]

	  validates_attachment :video_attachment,
  content_type: { content_type:"video/mp4" }
	

end
