class RemoveMilesFromJobs < ActiveRecord::Migration
  def change
  	remove_column :jobs, :miles
  end
end
