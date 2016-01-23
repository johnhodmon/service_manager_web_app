class RemoveMicropostTagsTable < ActiveRecord::Migration
  def change
  	drop_table :microposts_tags
  end
end
