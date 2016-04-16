json.array!(@videos) do |video|


 json.videoLocation video.video_attachment.url(:original)	
  json.url video.video_attachment.url(:thumb)

end
