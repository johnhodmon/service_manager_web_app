json.array!(@videos) do |video|
  json.extract! video, :id,:video_attachment_file_name
 json.videoLocation video.video_attachment.url(:original)	
  json.url video.video_attachment.url(:thumb)
end
