class RemoveTravelTimeFromJobs < ActiveRecord::Migration
  def change
  		remove_column :jobs, :travel_time
  end
end
