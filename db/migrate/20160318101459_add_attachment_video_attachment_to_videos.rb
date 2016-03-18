class AddAttachmentVideoAttachmentToVideos < ActiveRecord::Migration
  def self.up
    change_table :videos do |t|
      t.attachment :video_attachment
    end
  end

  def self.down
    remove_attachment :videos, :video_attachment
  end
end
