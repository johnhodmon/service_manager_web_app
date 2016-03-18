class Video < ActiveRecord::Base
	belongs_to :job

  has_attached_file :video_attachment, :styles => {
    :medium => { :geometry => "640x480", :format => 'mp4' },
    :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10 }
  }, :processors => [:transcoder]

	  validates_attachment :video_attachment,
  content_type: { content_type:"video/mp4" }
	

end
