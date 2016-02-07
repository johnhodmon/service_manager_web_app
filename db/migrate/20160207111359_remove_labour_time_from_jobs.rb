class RemoveLabourTimeFromJobs < ActiveRecord::Migration
  def change
  	remove_column :jobs, :labour_time
  end
end
